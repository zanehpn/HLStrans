set SynModuleInfo {
  {SRCNAME aes256_encrypt_ecb_Pipeline_ecb1 MODELNAME aes256_encrypt_ecb_Pipeline_ecb1 RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb1
    SUBMODULES {
      {MODELNAME aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init RTLNAME aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME aes256_encrypt_ecb_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME aes_expandEncKey MODELNAME aes_expandEncKey RTLNAME aes256_encrypt_ecb_aes_expandEncKey}
  {SRCNAME aes256_encrypt_ecb_Pipeline_ecb2 MODELNAME aes256_encrypt_ecb_Pipeline_ecb2 RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb2}
  {SRCNAME aes256_encrypt_ecb_Pipeline_cpkey MODELNAME aes256_encrypt_ecb_Pipeline_cpkey RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_cpkey}
  {SRCNAME aes256_encrypt_ecb_Pipeline_ecb3 MODELNAME aes256_encrypt_ecb_Pipeline_ecb3 RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_ecb3}
  {SRCNAME aes256_encrypt_ecb_Pipeline_sub MODELNAME aes256_encrypt_ecb_Pipeline_sub RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_sub}
  {SRCNAME aes256_encrypt_ecb_Pipeline_addkey MODELNAME aes256_encrypt_ecb_Pipeline_addkey RTLNAME aes256_encrypt_ecb_aes256_encrypt_ecb_Pipeline_addkey}
  {SRCNAME aes256_encrypt_ecb MODELNAME aes256_encrypt_ecb RTLNAME aes256_encrypt_ecb IS_TOP 1
    SUBMODULES {
      {MODELNAME aes256_encrypt_ecb_sbox_ROM_AUTO_1R RTLNAME aes256_encrypt_ecb_sbox_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
