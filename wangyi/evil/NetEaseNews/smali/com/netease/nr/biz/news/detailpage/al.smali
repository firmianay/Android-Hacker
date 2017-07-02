.class Lcom/netease/nr/biz/news/detailpage/al;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/al;->a:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/al;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/news/detailpage/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/al;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/al;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/al;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/al;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/al;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/al;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/al;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/detailpage/al;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/al;->b:Z

    return p1
.end method
