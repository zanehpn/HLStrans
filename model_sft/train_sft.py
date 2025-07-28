import os
import argparse
import yaml
from transformers import (
    AutoModelForCausalLM,
    AutoTokenizer,
    Trainer,
    TrainingArguments
)
from datasets import load_dataset

def parse_args():
    parser = argparse.ArgumentParser(description="Train SFT model from YAML config.")
    parser.add_argument(
        "--config_file", type=str, required=True,
        help="Path to YAML configuration file"
    )
    return parser.parse_args()


def main():
    args = parse_args()
    # Load YAML config
    with open(args.config_file, "r") as f:
        cfg = yaml.safe_load(f)

    # Model & tokenizer
    model = AutoModelForCausalLM.from_pretrained(
        cfg["model_name_or_path"],
        trust_remote_code=cfg.get("trust_remote_code", False)
    )
    tokenizer = AutoTokenizer.from_pretrained(
        cfg["model_name_or_path"],
        trust_remote_code=cfg.get("trust_remote_code", False)
    )

    # Dataset loading
    dataset = load_dataset(
        cfg["dataset"],
        split="train"
    )

    # Preprocessing
    def preprocess(example):
        return tokenizer(
            example.get("text", example.get("instruction", "")),
            truncation=True,
            padding="max_length",
            max_length=cfg.get("cutoff_len", 1024)
        )

    dataset = dataset.map(
        preprocess,
        batched=True,
        num_proc=cfg.get("preprocessing_num_workers", 4)
    )

    # Training arguments
    training_args = TrainingArguments(
        output_dir=cfg["output_dir"],
        per_device_train_batch_size=cfg.get("per_device_train_batch_size", 1),
        gradient_accumulation_steps=cfg.get("gradient_accumulation_steps", 1),
        learning_rate=cfg.get("learning_rate", 1e-5),
        num_train_epochs=cfg.get("num_train_epochs", 3),
        logging_steps=cfg.get("logging_steps", 10),
        save_steps=cfg.get("save_steps", 500),
        evaluation_strategy=cfg.get("eval_strategy", "no"),
        eval_steps=cfg.get("eval_steps", None),
        bf16=cfg.get("bf16", False),
        deepspeed=cfg.get("deepspeed", None),
        overwrite_output_dir=cfg.get("overwrite_output_dir", False),
        load_best_model_at_end=False,
        ddp_timeout=cfg.get("ddp_timeout", None)
    )

    # Initialize Trainer
    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=dataset,
        tokenizer=tokenizer
    )

    # Start training
    trainer.train()


if __name__ == "__main__":
    main()
