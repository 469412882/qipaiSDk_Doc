.class Lcom/jzb/qipaisdk/UpdateListActivity$4$1;
.super Ljava/lang/Object;
.source "UpdateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/UpdateListActivity$4;->convert(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

.field final synthetic val$itemData:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/UpdateListActivity$4;Ljava/lang/String;I)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iput-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$itemData:Ljava/lang/String;

    iput p3, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 354
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$itemData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    iget v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "packname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "packname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/AppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 359
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    iget v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

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

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$itemData:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-class v1, Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    .line 366
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "banner_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packName"

    .line 367
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "packname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "img_bg_url"

    .line 368
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v1, v1, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "img_bg_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;->this$1:Lcom/jzb/qipaisdk/UpdateListActivity$4;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
