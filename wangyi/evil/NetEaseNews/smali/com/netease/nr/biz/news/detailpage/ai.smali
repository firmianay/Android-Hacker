.class Lcom/netease/nr/biz/news/detailpage/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Lcom/netease/nr/biz/news/detailpage/ak;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/news/detailpage/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/ai;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netease/nr/biz/news/detailpage/ai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    iget-object v0, p1, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/netease/nr/biz/news/detailpage/ai;->c:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->c:Z

    iget v0, p1, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    iget-boolean v0, p1, Lcom/netease/nr/biz/news/detailpage/ai;->d:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->d:Z

    iget-object v0, p1, Lcom/netease/nr/biz/news/detailpage/ai;->f:Lcom/netease/nr/biz/news/detailpage/ak;

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->f:Lcom/netease/nr/biz/news/detailpage/ak;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ai;-><init>(Lcom/netease/nr/biz/news/detailpage/ai;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ai;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->f:Lcom/netease/nr/biz/news/detailpage/ak;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ak;)Lcom/netease/nr/biz/news/detailpage/ak;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->f:Lcom/netease/nr/biz/news/detailpage/ak;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ai;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/ai;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->e:I

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/ai;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/ai;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/news/detailpage/ai;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/news/detailpage/ai;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ai;->d:Z

    return v0
.end method
