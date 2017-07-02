.class public Lcom/weibo/a/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/a/e;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/a/e;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/weibo/a/e;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/a/e;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/weibo/a/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weibo/a/e;->b:[Ljava/lang/String;

    iput-object p1, p0, Lcom/weibo/a/e;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/weibo/a/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/weibo/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/weibo/a/e;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/weibo/a/e;->a(J)V

    :cond_0
    return-void
.end method
