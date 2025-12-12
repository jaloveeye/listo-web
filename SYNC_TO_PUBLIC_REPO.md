# Public 저장소 동기화 가이드

웹 파일들이 `docs/web/`에 업데이트되면, public 저장소(`listo-web`)로 동기화해야 합니다.

## 수동 동기화 방법

```bash
# 1. public 저장소 클론 (처음 한 번만)
cd /tmp
git clone git@github.com:jaloveeye/listo-web.git

# 2. 웹 파일 복사
cp -r /Users/herace/Workspace/cursor-project/listo/docs/web/* /tmp/listo-web/

# 3. 커밋 및 푸시
cd /tmp/listo-web
git add -A
git commit -m "Update legal documents"
git push origin main
```

## 자동 동기화 스크립트

`sync-web.sh` 스크립트를 실행하면 자동으로 동기화됩니다:

```bash
./docs/web/sync-web.sh
```

