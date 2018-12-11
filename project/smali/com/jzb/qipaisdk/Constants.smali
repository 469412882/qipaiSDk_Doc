.class public Lcom/jzb/qipaisdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = ""

.field public static mainClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    .line 13
    sput-object p1, Lcom/jzb/qipaisdk/Constants;->APP_ID:Ljava/lang/String;

    .line 14
    sput-object p2, Lcom/jzb/qipaisdk/Constants;->mainClass:Ljava/lang/Class;

    return-void
.end method
