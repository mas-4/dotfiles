iabbrev beginargparse import sys
    \<cr>import io
    \<cr>import argparse
    \<cr>
    \<cr>
    \<cr>if __name__ == '__main__':
    \<cr>parser = argparse.ArgumentParser("")
    \<cr>parser.add_argument('-i', '--input', action='store', type=str,
    \<cr>help="The input file. Defaults to stdin.")
    \<cr>parser.add_argument('-o', '--output', action='store', type=str,
    \<cr>help="The output file. Defaults to stdout.")
    \<cr>args = parser.parse_args()
    \<cr>FIN = io.open(args.input, 'r', encoding='utf-8-sig') if args.input\
    \<cr>else open(args.input, 'rt', encoding='utf-8-sig')
    \<cr>FOUT = sys.stdout if not args.output else open(args.output, 'wt')

" abbreviations
iabbrev yeahdawg 
      \<cr>▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
      \<cr>░░░░░ ░░░░▀█▄▀▄▀██████░▀█▄▀▄▀████▀
      \<cr>░░░░ ░░░░░░░▀█▄█▄███▀░░░▀██▄█▄█▀
