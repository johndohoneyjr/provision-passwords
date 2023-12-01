# provision-passwords

1. Add pass, gpg is already installed
2.  sudo apt install pass
3.  Create a gpg Key
   '''
5.   gpg --expert --full-gen-key
6.   gpg --list-signatures  (A lot of doc say to list keys, but you need signatures)
  '''
8. Use the key signature to initialize pass vault
'''
    pass init 85CA12CBA68ACBE8
    pass git init
    pass git remote  add origin https://github.com/johndohoneyjr/provision-passwords.git
    pass insert Business/CVS
    pass generate Email/jasondonenfeld.com
    pass
Password Store
├── Business
│   └── CVS
└── Email
    └── jasondonenfeld.com
    pass git push -u --all
'''
