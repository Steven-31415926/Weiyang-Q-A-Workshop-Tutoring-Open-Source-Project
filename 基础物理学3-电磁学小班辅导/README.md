# 基础物理学 III：电磁学小班辅导

本项目直接使用 XeLaTeX 和 Beamer 编写。静电场仍在修改，总页数以 `build/main.pdf` 为准。

## 文件结构

- `main.tex`：主文件，包含封面和课程安排。电磁感应与电磁波写在同一章。
- `preamble.tex`：字体、公式宏、蓝白版式、结论框和分节页脚。
- `modules/01_electrostatics.tex`：32页，静电场、电介质、稳恒电流场。
- `modules/02_magnetostatics.tex`：33页，静磁场、磁力、磁介质与磁路。
- `modules/03_induction.tex`：电磁感应与电磁波，两节合并。
- `modules/04_waves.tex`：已并入上一文件，不要再单独编译。
- `figures/`：讲义所用原图裁切。
- `build.ps1`：运行两遍 XeLaTeX，更新页码与书签。

每页的 `\src{...}` 记录出处，`\teach{...}` 记录讲授安排。这些内容不显示在投影页面中。

## 编译

在项目目录打开 PowerShell，运行：

```powershell
.\build.ps1
```

也可直接运行：

```powershell
xelatex -interaction=nonstopmode -halt-on-error -output-directory=build main.tex
xelatex -interaction=nonstopmode -halt-on-error -output-directory=build main.tex
```

输出文件为 `build/main.pdf`。编译引擎使用 XeLaTeX，中文字体为 Windows 的 SimHei。字体和版式统一在 `preamble.tex` 中调整。

## 授课安排

开场2分钟。静电场、静磁场的时间仍按前面两章。电磁感应与电磁波已合并成一章，放在静磁场之后。

配套《电磁学四模块_讲授大纲与题目索引》给出模型主线、讲解时间、全局页码和题目来源。
