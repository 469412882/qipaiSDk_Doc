.class Lcom/jzb/qipaisdk/DownApkListAdapter$2;
.super Ljava/lang/Object;
.source "DownApkListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/DownApkListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/DownApkListAdapter;I)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iput p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 128
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object p1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/OkDownload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v1, v1, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "packname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/jzb/qipaisdk/ApkDownModel;

    invoke-direct {v1}, Lcom/jzb/qipaisdk/ApkDownModel;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v2, v2, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/jzb/qipaisdk/ApkDownModel;->name:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v2, v2, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "apk_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/jzb/qipaisdk/ApkDownModel;->url:Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v2, v2, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "img_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/jzb/qipaisdk/ApkDownModel;->iconUrl:Ljava/lang/String;

    .line 135
    iget-object v2, v1, Lcom/jzb/qipaisdk/ApkDownModel;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v2

    .line 136
    invoke-static {p1, v2}, Lcom/lzy/okserver/OkDownload;->request(Ljava/lang/String;Lcom/lzy/okgo/request/base/Request;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    iget v2, v1, Lcom/jzb/qipaisdk/ApkDownModel;->priority:I

    .line 137
    invoke-virtual {p1, v2}, Lcom/lzy/okserver/download/DownloadTask;->priority(I)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v1}, Lcom/lzy/okserver/download/DownloadTask;->extra1(Ljava/io/Serializable;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadTask;->save()Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lzy/okserver/download/DownloadTask;->fileName(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    .line 142
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$100(Lcom/jzb/qipaisdk/DownApkListAdapter;)Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$100(Lcom/jzb/qipaisdk/DownApkListAdapter;)Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;->OnReload()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okserver/OkDownload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object p1

    .line 147
    iget-object v0, p1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 148
    iget v0, v0, Lcom/lzy/okgo/model/Progress;->status:I

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {v1}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$300(Lcom/jzb/qipaisdk/DownApkListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$202(Lcom/jzb/qipaisdk/DownApkListAdapter;Ljava/io/File;)Ljava/io/File;

    .line 159
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$000(Lcom/jzb/qipaisdk/DownApkListAdapter;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$200(Lcom/jzb/qipaisdk/DownApkListAdapter;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/AppUtils;->installApk(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadTask;->pause()V

    goto :goto_0

    .line 155
    :cond_1
    :pswitch_2
    invoke-virtual {p1}, Lcom/lzy/okserver/download/DownloadTask;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
