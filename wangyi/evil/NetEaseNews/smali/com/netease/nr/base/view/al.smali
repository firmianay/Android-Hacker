.class Lcom/netease/nr/base/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/al;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/al;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, p3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;I)I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/al;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0, p3}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/ListPopupWindow;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
