.class public Lt4j/data/Paging;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x74b0f6396f0f837bL


# instance fields
.field private count:I

.field private maxId:Ljava/lang/String;

.field private sinceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt4j/data/Paging;->count:I

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt4j/data/Paging;->count:I

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lt4j/data/Paging;->setCount(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt4j/data/Paging;->count:I

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lt4j/data/Paging;->setSinceId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lt4j/data/Paging;->setCount(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt4j/data/Paging;->count:I

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lt4j/data/Paging;->setSinceId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lt4j/data/Paging;->setMaxId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public count(I)Lt4j/data/Paging;
    .locals 0

    invoke-virtual {p0, p1}, Lt4j/data/Paging;->setCount(I)V

    return-object p0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lt4j/data/Paging;->count:I

    return v0
.end method

.method public getMaxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/Paging;->count:I

    return-void
.end method

.method public setMaxId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Paging;->maxId:Ljava/lang/String;

    return-void
.end method

.method public setSinceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Paging;->sinceId:Ljava/lang/String;

    return-void
.end method
