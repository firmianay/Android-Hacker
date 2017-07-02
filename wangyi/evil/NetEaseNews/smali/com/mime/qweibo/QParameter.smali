.class public Lcom/mime/qweibo/QParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x47ad97e5286ed448L


# instance fields
.field mName:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/mime/qweibo/QParameter;

    iget-object v0, p0, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    iget-object v1, p1, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/mime/qweibo/QParameter;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/mime/qweibo/QParameter;

    iget-object v2, p0, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
