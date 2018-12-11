.class public Lcom/jzb/qipaisdk/DownApkListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DownApkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;,
        Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;,
        Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ALL:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private list_path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApkDownFile:Ljava/io/File;

.field private mContext:Landroid/app/Activity;

.field private mOnReloadListener:Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

.field private numberFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list_path:Ljava/util/ArrayList;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mContext:Landroid/app/Activity;

    .line 44
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->numberFormat:Ljava/text/NumberFormat;

    .line 45
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->numberFormat:Ljava/text/NumberFormat;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 46
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 47
    :goto_0
    iget-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list_path:Ljava/util/ArrayList;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/DownApkListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jzb/qipaisdk/DownApkListAdapter;)Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mOnReloadListener:Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jzb/qipaisdk/DownApkListAdapter;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mApkDownFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jzb/qipaisdk/DownApkListAdapter;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mApkDownFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jzb/qipaisdk/DownApkListAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list_path:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createTag(Lcom/lzy/okserver/download/DownloadTask;)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 74
    check-cast p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

    .line 75
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "img_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "http"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_background:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->getImageResourceId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "img_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_background:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/jzb/qipaisdk/AppUtils;->disImgRound(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 82
    :goto_0
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_name2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "des"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    if-ne p2, v1, :cond_1

    .line 88
    iget-object v1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_bottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_bottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "packname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "packname"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/jzb/qipaisdk/AppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_pro:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_down:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_down:Landroid/widget/TextView;

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_01:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/jzb/qipaisdk/DownApkListAdapter$1;-><init>(Lcom/jzb/qipaisdk/DownApkListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 107
    :cond_2
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okserver/OkDownload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okserver/OkDownload;->getTask(Ljava/lang/String;)Lcom/lzy/okserver/download/DownloadTask;

    move-result-object v0

    .line 110
    iget-object v1, v0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    .line 112
    iget-object v4, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list_path:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/lzy/okgo/model/Progress;->filePath:Ljava/lang/String;

    invoke-virtual {v4, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0, v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->createTag(Lcom/lzy/okserver/download/DownloadTask;)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v4, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;

    invoke-direct {v4, p0, v1, p1}, Lcom/jzb/qipaisdk/DownApkListAdapter$ListDownloadListener;-><init>(Lcom/jzb/qipaisdk/DownApkListAdapter;Ljava/lang/Object;Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;)V

    invoke-virtual {v0, v4}, Lcom/lzy/okserver/download/DownloadTask;->register(Lcom/lzy/okserver/download/DownloadListener;)Lcom/lzy/okserver/download/DownloadTask;

    .line 115
    invoke-virtual {p1, v1}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->setTag(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->setTask(Lcom/lzy/okserver/download/DownloadTask;)V

    .line 117
    iget-object v0, v0, Lcom/lzy/okserver/download/DownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    invoke-virtual {p1, v0}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->refresh(Lcom/lzy/okgo/model/Progress;)V

    .line 118
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_pro:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_down:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 121
    :cond_3
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_pro:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_down:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_2
    iget-object p1, p1, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_01:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/jzb/qipaisdk/DownApkListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/jzb/qipaisdk/DownApkListAdapter$2;-><init>(Lcom/jzb/qipaisdk/DownApkListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 62
    iget-object p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/jzb/qipaisdk/R$layout;->z_p_item_update_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;-><init>(Lcom/jzb/qipaisdk/DownApkListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnReloadListener(Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mOnReloadListener:Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    return-void
.end method

.method public updateData(I)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mOnReloadListener:Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter;->mOnReloadListener:Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;

    invoke-interface {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;->OnReload()V

    :cond_0
    return-void
.end method
