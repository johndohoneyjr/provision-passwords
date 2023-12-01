# provision-passwords

1. Add pass, gpg is already installed
2.  sudo apt install pass
3.  Create a gpg Key
5.   gpg --expert --full-gen-key
6.   gpg --list-signatures  (A lot of doc say to list keys, but you need signatures)
7. Use the key signature to initialize pass vault
8. pass init 85CA12CBA68ACBE8
9. pass git init
12. pass git remote  add origin https://github.com/johndohoneyjr/provision-passwords.git
13. pass insert Business/CVS
14. pass generate Email/jasondonenfeld.com
15. pass
16. Password Store
17.    ├── Business
18.    │   └── CVS
19.    └── Email
20.        └── jasondonenfeld.com
21. git push -u --all
