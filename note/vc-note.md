```bash
git init
git add note; git commit --file .changeset/msg.note.tmp.md;
git add err-log; git commit --file .changeset/msg.errlog.tmp.md;
git add scripts; git commit --file .changeset/msg.script.tmp.md;

ls scripts | grep ".sh" | sed "s/^/add /g"

git add .editorconfig; git commit --file .changeset/msg.style.tmp.md;
git add .gitignore; git commit --file .changeset/msg.gitignore.tmp.md;
git add README.md; git commit --file .changeset/msg.gitignore.tmp.md;

git add README.md ; git commit -m "docs(core): ini readme";
# git add CHANGELOG.md ; git commit -m "docs(core): put changelog";

git add err-log ; git commit --file .changeset/msg.errlog.tmp.md;
```
