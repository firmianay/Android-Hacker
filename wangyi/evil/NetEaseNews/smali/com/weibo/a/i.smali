.class public Lcom/weibo/a/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/weibo/a/i;


# instance fields
.field private k:Lcom/weibo/a/e;

.field private l:Lcom/weibo/a/d;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://api.weibo.com/2/"

    sput-object v0, Lcom/weibo/a/i;->a:Ljava/lang/String;

    const-string v0, "http://api.t.sina.com.cn/oauth/request_token"

    sput-object v0, Lcom/weibo/a/i;->b:Ljava/lang/String;

    const-string v0, "http://api.t.sina.com.cn/oauth/authorize"

    sput-object v0, Lcom/weibo/a/i;->c:Ljava/lang/String;

    const-string v0, "http://api.t.sina.com.cn/oauth/access_token"

    sput-object v0, Lcom/weibo/a/i;->d:Ljava/lang/String;

    const-string v0, "http://api.t.sina.com.cn/oauth/authenticate"

    sput-object v0, Lcom/weibo/a/i;->e:Ljava/lang/String;

    const-string v0, "https://api.weibo.com/oauth2/access_token"

    sput-object v0, Lcom/weibo/a/i;->f:Ljava/lang/String;

    const-string v0, "https://api.weibo.com/oauth2/authorize"

    sput-object v0, Lcom/weibo/a/i;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/weibo/a/i;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/weibo/a/i;->i:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/weibo/a/i;->j:Lcom/weibo/a/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/weibo/a/i;->k:Lcom/weibo/a/e;

    iput-object v0, p0, Lcom/weibo/a/i;->l:Lcom/weibo/a/d;

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-static {v0, v1}, Lcom/weibo/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/a/i;->l:Lcom/weibo/a/d;

    invoke-static {v0}, Lcom/weibo/a/f;->a(Lcom/weibo/a/e;)V

    const-string v0, "wbconnect://success"

    iput-object v0, p0, Lcom/weibo/a/i;->m:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/weibo/a/i;
    .locals 2

    const-class v1, Lcom/weibo/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/weibo/a/i;->j:Lcom/weibo/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/weibo/a/i;

    invoke-direct {v0}, Lcom/weibo/a/i;-><init>()V

    sput-object v0, Lcom/weibo/a/i;->j:Lcom/weibo/a/i;

    :cond_0
    sget-object v0, Lcom/weibo/a/i;->j:Lcom/weibo/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/weibo/a/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/weibo/a/i;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/a/k;Ljava/lang/String;Lcom/weibo/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/weibo/a/i;->k:Lcom/weibo/a/e;

    invoke-static {p1, p2, p4, p3, v0}, Lcom/weibo/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/a/k;Lcom/weibo/a/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/weibo/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/a/i;->k:Lcom/weibo/a/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/a/i;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/weibo/a/i;->h:Ljava/lang/String;

    sput-object p2, Lcom/weibo/a/i;->i:Ljava/lang/String;

    return-void
.end method
