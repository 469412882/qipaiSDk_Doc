.class Lcom/jzb/qipaisdk/UpdateListActivity$3;
.super Ljava/lang/Object;
.source "UpdateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/UpdateListActivity;->goNext2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

.field final synthetic val$text_right_type:Ljava/lang/String;

.field final synthetic val$title:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/UpdateListActivity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iput-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$text_right_type:Ljava/lang/String;

    iput-object p3, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$title:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 291
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$text_right_type:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x65ca099e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8ed

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "H5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "WeiXin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 321
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-class v1, Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "url"

    .line 322
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$title:Ljava/util/Map;

    const-string v2, "text_right_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packName"

    const-string v1, ""

    .line 323
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "img_bg_url"

    const-string v1, ""

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 303
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 305
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$title:Ljava/util/Map;

    const-string v1, "text_right_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$title:Ljava/util/Map;

    const-string v1, "text_right_url_w"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 307
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 308
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MAIN"

    .line 309
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 310
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {v0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-string v0, "\u5f53\u524d\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 294
    :pswitch_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->val$title:Ljava/util/Map;

    const-string v1, "text_right_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$3;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-string v0, "\u5f53\u524d\u624b\u673a\u6ca1\u6709\u5b89\u88c5QQ"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
