# Listo Legal Documents

This directory contains the legal documents for the Listo app, including Privacy Policy and Terms of Service in both Korean and English.

## Structure

```
docs/web/
├── index.html              # Language selection page
├── ko/                     # Korean documents
│   ├── privacy_policy.html
│   └── terms_of_service.html
└── en/                     # English documents
    ├── privacy_policy.html
    └── terms_of_service.html
```

## GitHub Pages Deployment

To deploy these pages using GitHub Pages:

1. Go to your repository settings on GitHub
2. Navigate to "Pages" in the left sidebar
3. Under "Source", select "Deploy from a branch"
4. Choose "main" or "develop" branch
5. Select "/docs" as the folder
6. Click "Save"

The pages will be available at:
- `https://[username].github.io/listo-web/` (if deploying from root)
- Or configure a custom domain if needed

## URLs

After deployment, the pages will be accessible at:
- Main page: `https://[username].github.io/listo-web/`
- Support page: `https://[username].github.io/listo-web/support.html`
- Korean Privacy Policy: `https://[username].github.io/listo-web/ko/privacy_policy.html`
- Korean Terms of Service: `https://[username].github.io/listo-web/ko/terms_of_service.html`
- English Privacy Policy: `https://[username].github.io/listo-web/en/privacy_policy.html`
- English Terms of Service: `https://[username].github.io/listo-web/en/terms_of_service.html`

## Updating Documents

When updating the legal documents:
1. Update the "Last Updated" date in both Korean and English versions
2. Make sure both language versions are synchronized
3. Commit and push changes to the repository
4. GitHub Pages will automatically rebuild (may take a few minutes)

