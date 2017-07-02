.class Lcom/netease/nr/biz/i/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/netease/nr/biz/i/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/nr/biz/i/a/a/e;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/e;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->f:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nr/biz/i/a/a/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/i/a/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/e;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
