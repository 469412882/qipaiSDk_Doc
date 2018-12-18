.class public Lcom/jzb/qipaisdk/WebViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WebViewActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private img_bg_url:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mWebView:Landroid/webkit/WebView;

.field private packName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field webSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-string v0, "WebViewActivity"

    .line 39
    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private initGoActivity()V
    .locals 2

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u8bd5"

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 74
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->packName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_bg_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->img_bg_url:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    sget v2, Lcom/jzb/qipaisdk/R$drawable;->z_p_download_bg:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jzb/qipaisdk/WebViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->packName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jzb/qipaisdk/AppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->packName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->finish()V

    goto/16 :goto_1

    .line 95
    :cond_1
    invoke-virtual {p0, p0}, Lcom/jzb/qipaisdk/WebViewActivity;->showDownloadDialog(Landroid/app/Activity;)V

    .line 96
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/WebViewActivity;->downloadApk(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->img_bg_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->img_bg_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mImageView:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1}, Lcom/jzb/qipaisdk/AppUtils;->disImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 104
    :cond_2
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 105
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jzb/qipaisdk/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    .line 108
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 110
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 111
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 112
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 113
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 114
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 115
    invoke-static {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheDirPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 127
    invoke-direct {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->initWebView()V

    :cond_4
    :goto_1
    return-void
.end method

.method private initWebView()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jzb/qipaisdk/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/WebViewActivity$1;-><init>(Lcom/jzb/qipaisdk/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 160
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jzb/qipaisdk/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/WebViewActivity$2;-><init>(Lcom/jzb/qipaisdk/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 179
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jzb/qipaisdk/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/WebViewActivity$3;-><init>(Lcom/jzb/qipaisdk/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 238
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 239
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;)V
    .locals 4

    .line 263
    new-instance v0, Lcom/jzb/qipaisdk/ApkDownModel;

    invoke-direct {v0}, Lcom/jzb/qipaisdk/ApkDownModel;-><init>()V

    .line 264
    iput-object p1, v0, Lcom/jzb/qipaisdk/ApkDownModel;->url:Ljava/lang/String;

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->packName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadApk: ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/haocai/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okserver/OkDownload;->setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;

    .line 269
    iget-object v1, v0, Lcom/jzb/qipaisdk/ApkDownModel;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v1

    .line 270
    invoke-static {p1, v1}, Lcom/lzy/okserver/OkDownload;->request(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    iget v2, v0, Lcom/jzb/qipaisdk/ApkDownModel;->priority:I

    .line 271
    invoke-virtual {v1, v2}, Lcom/lzy/okserver/download/DownloadTask;->priority(I)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v0}, Lcom/lzy/okserver/download/DownloadTask;->extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/lzy/okserver/download/DownloadTask;->save()Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lzy/okserver/download/DownloadTask;->fileName(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    .line 275
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lzy/okgo/db/DownloadManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/model/Progress;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okserver/OkDownload;->restore(Lcom/lzy/okgo/model/Progress;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 276
    new-instance v1, Lcom/jzb/qipaisdk/WebViewActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/ApkDownModel;->url:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/jzb/qipaisdk/WebViewActivity$4;-><init>(Lcom/jzb/qipaisdk/WebViewActivity;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/lzy/okserver/download/DownloadTask;->register(Lcom/lzy/okserver/download/DownloadListener;)Lcom/lzy/okserver/download/DownloadTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/WebViewActivity;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 56
    invoke-static {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->initGoActivity()V

    return-void

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: mWebView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public refreshProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 4

    .line 307
    iget v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jzb/qipaisdk/WebViewActivity$5;

    invoke-direct {v1, p0}, Lcom/jzb/qipaisdk/WebViewActivity$5;-><init>(Lcom/jzb/qipaisdk/WebViewActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :pswitch_4
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u7b49\u5f85\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :pswitch_5
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u5df2\u505c\u6b62"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 336
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showDownloadDialog(Landroid/app/Activity;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 250
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 251
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 252
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 253
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v0, "\u66f4\u65b0\u4e2d..."

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 256
    iget-object p1, p0, Lcom/jzb/qipaisdk/WebViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected showErrorPage()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/jzb/qipaisdk/WebViewActivity;->initGoActivity()V

    return-void
.end method
