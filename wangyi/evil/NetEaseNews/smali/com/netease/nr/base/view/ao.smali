.class Lcom/netease/nr/base/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ao;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ao;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ao;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->e()V

    return-void
.end method
