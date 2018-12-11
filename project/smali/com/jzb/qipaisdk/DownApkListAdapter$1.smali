.class Lcom/jzb/qipaisdk/DownApkListAdapter$1;
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

    .line 96
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iput p2, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 100
    iget-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {p1}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$000(Lcom/jzb/qipaisdk/DownApkListAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v0, v0, Lcom/jzb/qipaisdk/DownApkListAdapter;->list:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "packname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14200000

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$1;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-static {v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->access$000(Lcom/jzb/qipaisdk/DownApkListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
