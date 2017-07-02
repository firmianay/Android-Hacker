.class Lcom/netease/util/k/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/util/k/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/util/k/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/k/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
