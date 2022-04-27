# LaTeXmk 配置文件

# 使用示例
# latexmk file.tex

# 主要的命令行选项
# -pdf : 使用 pdflatex 生成 pdf
# -xelatex : 使用 xelatex 生成 pdf
# -pv  : 预览文件
# -pvc : 预览文件，并跟踪修改
# -c   : 删除所有生成的文件（不包括 DVI、PS 和 PDF 文件）
# -C   : 删除所有生成的文件

# @default_files=('main');

# pdf 引擎设置
# 0: 不生成 pdf
# 1: tex -> pdf (pdflatex)
# 2: tex -> ps -> pdf (ps2pdf)
# 3: tex -> dvi -> pdf (dvipdf)
# 4: tex -> pdf (lualatex)
# 5: tex -> pdf -> xdv (xelatex, xdvipdfmx)
$pdf_mode = 5;

# 使用 bibtex 如果存在 .bib 文件
# $bibtex_use = 1.5;

# -file-line-error 使报错输出文件和行号
# -halt-on-error 和 -interaction=nonstopmode 使编译遇到错误时立即停止
# -synctex=1 则开启 synctex 的功能
$pdflatex = 'pdflatex --shell-escape -synctex=1 --interaction=nonstopmode -file-line-error';
$lualatex = 'lualatex --shell-escape -synctex=1 --interaction=nonstopmode -file-line-error';
$xelatex = 'xelatex -shell-escape -no-pdf -synctex=1 --interaction=nonstopmode -file-line-error';

# 默认 pdf 阅读器
$pdf_previewer = '%LOCALAPPDATA%\SumatraPDF\SumatraPDF.exe %O %S';

# 立即打开预览
# $preview_mode = 1;
# 立即打开预览并跟踪修改
# $preview_continuous_mode = 1

# 额外清理的文件
$clean_ext = 'pdfsync synctex.gz';

# $recorder = 1;

# 所有生成的文件放入 out 文件夹
$out_dir = 'out';

# 配合subfiles宏包
$do_cd = 1;
