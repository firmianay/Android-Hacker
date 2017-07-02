.class public Lcom/netease/ad/e/b;
.super Lcom/netease/ad/e/a;


# instance fields
.field public d:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/netease/ad/e/a;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/e/b;->d:Ljava/io/File;

    return-void
.end method
