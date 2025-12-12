# GitHub Pages 배포 가이드

## 배포 방법

### 1. GitHub 저장소 설정

1. GitHub 저장소 페이지로 이동: <https://github.com/jaloveeye/listo-web>
2. **Settings** 탭 클릭
3. 왼쪽 사이드바에서 **Pages** 클릭
4. **Source** 섹션에서:
   - "Deploy from a branch" 선택
   - Branch: `main` 선택
   - Folder: `/ (root)` 선택
5. **Save** 클릭

### 2. 배포 확인

배포가 완료되면 (보통 1-2분 소요) 다음 URL로 접근할 수 있습니다:

- **메인 페이지**: <https://jaloveeye.github.io/listo-web/>
- **지원 페이지**: <https://jaloveeye.github.io/listo-web/support.html>
- **한글 개인정보 취급 방침**: <https://jaloveeye.github.io/listo-web/ko/privacy_policy.html>
- **한글 앱 사용 약관**: <https://jaloveeye.github.io/listo-web/ko/terms_of_service.html>
- **영문 개인정보 취급 방침**: <https://jaloveeye.github.io/listo-web/en/privacy_policy.html>
- **영문 앱 사용 약관**: <https://jaloveeye.github.io/listo-web/en/terms_of_service.html>

### 3. 로컬 테스트

로컬에서 테스트하려면:

```bash
cd docs/web
python3 -m http.server 8000
```

그 다음 브라우저에서 `http://localhost:8000` 접속

### 4. 업데이트

문서를 수정한 후:

1. 변경사항 커밋 및 푸시
2. GitHub Pages가 자동으로 재배포 (1-2분 소요)

## 문제 해결

### 페이지가 표시되지 않는 경우

1. GitHub Actions 탭에서 배포 상태 확인
2. `.nojekyll` 파일이 있는지 확인 (Jekyll 비활성화)
3. 파일 경로가 올바른지 확인

### 404 에러가 발생하는 경우

- URL 경로가 정확한지 확인
- `/listo-web/` 경로가 올바른지 확인
- 브라우저 캐시 삭제 후 재시도
