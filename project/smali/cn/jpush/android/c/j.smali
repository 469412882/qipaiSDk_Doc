.class public final Lcn/jpush/android/c/j;
.super Lcn/jpush/android/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/jpush/android/c/e;-><init>()V

    const-string v0, "XIAOMI_APPKEY"

    .line 21
    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    const-string v0, "XIAOMI_APPID"

    .line 22
    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "PluginXiaomiPlatformAction"

    const-string v0, "Register - context was null"

    .line 30
    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "PluginXiaomiPlatformAction"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xiaomiAppKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",xiaomiAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "PluginXiaomiPlatformAction"

    const-string v0, "xiaomi sdk appkey or appid was empty,please check your manifest config"

    .line 36
    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "#unexpected - register error:"

    .line 41
    invoke-static {v0, v1, p1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "resumePush"

    .line 64
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "PluginXiaomiPlatformAction"

    const-string v0, "context was null"

    .line 66
    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->enablePush(Landroid/content/Context;)V

    return-void
.end method

.method protected final c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "stopPush"

    .line 48
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "PluginXiaomiPlatformAction"

    const-string v0, "context was null"

    .line 50
    invoke-static {p1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->disablePush(Landroid/content/Context;)V

    return-void
.end method
