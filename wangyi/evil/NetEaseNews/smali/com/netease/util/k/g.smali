.class Lcom/netease/util/k/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/util/k/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/util/k/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
