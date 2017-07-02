.class Lcom/netease/nr/base/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/as;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v1}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    iget v1, v1, Lcom/netease/nr/base/view/ListPopupWindow;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->e(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/as;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a()V

    :cond_0
    return-void
.end method
