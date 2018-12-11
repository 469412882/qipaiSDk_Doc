.class Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;
.super Lcom/lzy/okserver/download/DownloadListener;
.source "DownApkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/DownApkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListDownloadListener"
.end annotation


# instance fields
.field private holder:Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

.field final synthetic this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/DownApkListAdapter;Ljava/lang/Object;Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    .line 183
    invoke-direct {p0, p2}, Lcom/lzy/okserver/download/DownloadListener;-><init>(Ljava/lang/Object;)V

    .line 184
    iput-object p3, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->holder:Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 200
    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 206
    iget-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->updateData(I)V

    .line 207
    iget-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {p2}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$000(Lcom/jzb/qipaisdk/DownApkListAdapter;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/jzb/qipaisdk/AppUtils;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 178
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->onFinish(Ljava/io/File;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public onProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->holder:Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

    invoke-virtual {v1}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->getTag()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;->holder:Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->refresh(Lcom/lzy/okgo/model/Progress;)V

    :cond_0
    return-void
.end method

.method public onRemove(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    return-void
.end method
