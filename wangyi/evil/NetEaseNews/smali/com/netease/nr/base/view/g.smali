.class Lcom/netease/nr/base/view/g;
.super Lcom/netease/nr/base/view/j;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/j;-><init>(Lcom/netease/nr/base/view/b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/g;-><init>()V

    return-void
.end method


# virtual methods
.method b(Lcom/netease/util/j/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/j;->b(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/g;->a:Landroid/view/View;

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f02003e

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
