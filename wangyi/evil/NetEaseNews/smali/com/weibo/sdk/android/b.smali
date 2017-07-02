.class public Lcom/weibo/sdk/android/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field private static e:Lcom/weibo/sdk/android/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://open.weibo.cn/oauth2/authorize"

    sput-object v0, Lcom/weibo/sdk/android/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/weibo/sdk/android/b;->e:Lcom/weibo/sdk/android/b;

    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/b;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/weibo/sdk/android/b;->d:Z

    return-void
.end method
