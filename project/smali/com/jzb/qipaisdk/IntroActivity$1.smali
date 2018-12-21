.class Lcom/jzb/qipaisdk/IntroActivity$1;
.super Landroid/os/Handler;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/IntroActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/IntroActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    const-class v2, Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "json"

    .line 52
    iget-object v2, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v2, v2, Lcom/jzb/qipaisdk/IntroActivity;->updateDataValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-virtual {v1, v0}, Lcom/jzb/qipaisdk/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/IntroActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/IntroActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/IntroActivity;->dataValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    :cond_3
    const-string v1, "rt_code"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "201"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    goto :goto_0

    :cond_4
    const-string v1, "data"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "show_url"

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "url"

    .line 75
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v1, v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$100(Lcom/jzb/qipaisdk/IntroActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/jzb/qipaisdk/IntroActivity$1;->this$0:Lcom/jzb/qipaisdk/IntroActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/IntroActivity;->access$000(Lcom/jzb/qipaisdk/IntroActivity;)V

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
