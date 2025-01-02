# git
# git은 분산 버전 관리 시스템으로 파일의 변경사항을 추적하여 
# 프로젝트 이용자들 간의 작업을 효율적으로 조율한다.

# repository
# git으로 버전 관리를 할 저장소로 local과 remote로 나뉜다.
# local에는 개인의 작업 내용들을 저장하고 관리한다.
# remote은 원격으로 저장소를 관리하며 여러 사용자들이 공유한다.

# commit
# 특정 시점에 변경딘 파일들의 변경사항을 모아둔 스냅샷으로
# message와 description을 통해 어떤 변경사항이 있는지 기록할 수 있다.

# file status
# 파일 변경사항의 상태로 tracked와 untracked로 추적할 파일들을 구분한다.
# tracked 파일들은 unmodified, modified 그리고 staged의 상태를 가진다.
# staged는 수정된 파일들 중에 commit될 파일들을 의미한다.

# branch
# 특정 commit에서 분기한 독립적인 작업 공간으로 여러 branch를 생성하여
# 각 branch에서 작업된 내용들을 병합하여 하나의 branch로 합칠 수 있다.
# 병합 과정에서 충돌이 발생할 수 있으며 이를 해결해야 한다.

# .git 폴더를 생성하여 git repository를 초기화한다.
git init

# 현재 repository의 상태를 확인한다.
git status

# modified 파일들의 변경 내용들을 staged 상태로 변경한다.
git add $path
git add $filename

# 이전 commit된 파일들과 staged 파일들의 변경상태를 비교한다.
git diff --staged

# staged 파일들을 commit하여 현재 repository에 저장한다.
git commit -m $message
git commit --amend

# tracked 상태의 파일을 삭제한다.
git rm $filename
git rm --cached $filename

# repository의 commit 기록들을 확인한다.
git log
git log --oneline --decorate --graph --all

# 파일들을 상태나 변경사항을 되돌린다.
git reset HEAD $filename
git reset $commit

# 파일들을 $commit으로 되돌리며 이력을 남긴다.
git revert $commit

# 현재 local에 저장된 branch를 확인하거나 $branch를 생성한다.
git branch
git branch $branch

# $branch로 이동한다.
git checkout $branch

# $branch를 현재 branch에 병합한다.
git merge $branch

# $branch를 $base에 합치며 commit을 재정렬한다. 이력이 남지 않는다.
git rebase $base $branch

# 원격으로 저장된 repository를 복제한다.
git clone $url

# remote repository들을 확인하고 추가할 수 있다.
git remote -v
git remote add $name $url

# remote repository의 변경사항을 확인한다.
git fetch $remote $branch...

# remote repository의 branch들에서 변경사항을 가져와 merge한다.
git pull $remote $branch...

# remote repository에 branch의 변경사항을 전송한다.
git push $remote $branch

# 현재 파일들의 변경사항을 임시로 저장하고 적용할 수 있다.
git stash
git stash list
git stash apply

# Reference
# git-book: https://git-scm.com/book/en/v2
# https://urbanbase.github.io/dev/2021/01/15/GitCommand.html