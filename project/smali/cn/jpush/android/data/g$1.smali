.class final Lcn/jpush/android/data/g$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/data/g;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/data/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/jpush/android/data/g;


# direct methods
.method constructor <init>(Lcn/jpush/android/data/g;Lcn/jpush/android/data/g;Landroid/content/Context;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iput-object p2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object p3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "ShowEntity"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showEntity process start run! showMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", richType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jumpMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->M:I

    if-eqz v0, :cond_0

    const-string v0, "ShowEntity"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected: unknown show  mode - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/data/g$1;->c:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v0, v0, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v1, v1, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v2, v2, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcn/jiguang/api/JCoreInterface;->triggerSceneCheck(Landroid/content/Context;I)V

    .line 132
    iget-object v3, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v3, v3, Lcn/jpush/android/data/g;->L:I

    const/16 v5, 0x3e3

    const/4 v6, 0x0

    if-nez v3, :cond_8

    .line 133
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v1, v1, Lcn/jpush/android/data/g;->w:I

    if-ne v1, v4, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "http://"

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/jpush/android/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v1, v2, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "ShowEntity"

    const-string v2, "Get developer picture failed, show basic notification only."

    .line 153
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "ShowEntity"

    const-string v2, "No permission to read resource from storage, show basic notification only."

    .line 156
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_4
    :goto_0
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 138
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v1, v2, Lcn/jpush/android/data/g;->y:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "ShowEntity"

    const-string v2, "Get network picture failed, show basic notification only."

    .line 140
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "ShowEntity"

    const-string v2, "No permission to write resource to storage, show basic notification only."

    .line 143
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_7
    :goto_1
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 1033
    invoke-static {v0, v5, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    return-void

    .line 166
    :cond_8
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget v2, v2, Lcn/jpush/android/data/g;->L:I

    const/4 v3, 0x4

    if-ne v3, v2, :cond_9

    .line 167
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iput-object v1, v2, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 2033
    invoke-static {v0, v5, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    return-void

    .line 173
    :cond_9
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v4}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x3f6

    if-nez v2, :cond_a

    const-string v1, "ShowEntity"

    const-string v2, "Rich-push needs the permission of WRITE_EXTERNAL_STORAGE, please request it."

    .line 174
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 3033
    invoke-static {v0, v4, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void

    .line 184
    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_c

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_d

    const/4 v9, 0x5

    const-wide/16 v10, 0x1388

    .line 186
    invoke-static {v1, v9, v10, v11}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJ)Lcn/jiguang/net/HttpResponse;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 187
    invoke-virtual {v9}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_b

    .line 189
    invoke-virtual {v9}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    const-string v2, "ShowEntity"

    const-string v3, "Show url is Empty! Give up to download!"

    .line 196
    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object v3, v6

    const/4 v2, 0x0

    .line 200
    :goto_3
    iget-object v9, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v9, v0}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v2, :cond_11

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".html"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "/"

    .line 211
    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v7, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v7, v7, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    .line 214
    iget-object v7, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v7, v7, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    iget-object v8, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v10, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-virtual {v10}, Lcn/jpush/android/data/g;->a()Z

    move-result v10

    invoke-static {v7, v8, v1, v0, v10}, Lcn/jpush/android/data/b;->a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v1, "ShowEntity"

    const-string v2, "Loads rich push resources failed, webView will open url!"

    .line 217
    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 5033
    invoke-static {v0, v4, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    return-void

    :cond_e
    const-string v7, "ShowEntity"

    const-string v8, "Loads rich push resources succeed, webView will open cache!"

    .line 223
    invoke-static {v7, v8}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "img src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "img src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    iget-object v3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 230
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 6033
    invoke-static {v0, v5, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 232
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto :goto_4

    .line 234
    :cond_f
    iget-object v1, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 7033
    invoke-static {v0, v4, v6, v1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void

    .line 237
    :cond_10
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    iget-object v1, v1, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/g$1;->a:Lcn/jpush/android/data/g;

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    :goto_4
    return-void

    :cond_11
    const-string v2, "ShowEntity"

    const-string v3, "NOTE: failed to download html page. Give up this."

    .line 204
    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    .line 4033
    invoke-static {v0, v4, v6, v2}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    const/16 v2, 0x3fd

    .line 207
    iget-object v3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/jpush/android/data/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v2, v1, v3}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    return-void
.end method
