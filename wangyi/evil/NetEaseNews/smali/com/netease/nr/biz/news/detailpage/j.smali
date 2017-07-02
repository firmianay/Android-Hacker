.class public Lcom/netease/nr/biz/news/detailpage/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:J

.field public static b:J


# instance fields
.field c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xa4cb800

    sput-wide v0, Lcom/netease/nr/biz/news/detailpage/j;->a:J

    const-wide/32 v0, 0x19bfcc00

    sput-wide v0, Lcom/netease/nr/biz/news/detailpage/j;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/j;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/j;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/j;->c:Ljava/util/HashMap;

    return-void
.end method
