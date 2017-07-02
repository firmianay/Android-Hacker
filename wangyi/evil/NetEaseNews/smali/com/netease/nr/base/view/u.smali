.class Lcom/netease/nr/base/view/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/FitImageView;

.field private b:Lcom/netease/util/c/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/FitImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/u;->a:Lcom/netease/nr/base/view/FitImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/nr/base/view/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/u;-><init>(Lcom/netease/nr/base/view/FitImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/u;Lcom/netease/util/c/b;)Lcom/netease/util/c/b;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/u;->b:Lcom/netease/util/c/b;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/base/view/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/u;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/nr/base/view/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/u;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/base/view/u;->a:Lcom/netease/nr/base/view/FitImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/nr/base/view/u;)Lcom/netease/nr/base/view/u;

    iget-object v0, p0, Lcom/netease/nr/base/view/u;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v1, p0, Lcom/netease/nr/base/view/u;->b:Lcom/netease/util/c/b;

    iget-object v2, p0, Lcom/netease/nr/base/view/u;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/base/view/u;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/util/c/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
