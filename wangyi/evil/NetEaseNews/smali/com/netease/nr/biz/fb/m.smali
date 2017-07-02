.class Lcom/netease/nr/biz/fb/m;
.super Landroid/widget/SimpleCursorAdapter;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

.field private b:I

.field private c:I

.field private d:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/fb/FeedBackDetailList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/netease/util/j/a;)V
    .locals 6

    iput-object p1, p0, Lcom/netease/nr/biz/fb/m;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {p1}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/nr/biz/fb/m;->b:I

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/biz/fb/m;->c:I

    iput-object p7, p0, Lcom/netease/nr/biz/fb/m;->d:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const v0, 0x7f0c0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f0c0099

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c009a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080111

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080112

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080113

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/netease/nr/biz/fb/m;->d:Lcom/netease/util/j/a;

    const v8, 0x7f0200b1

    invoke-virtual {v7, v2, v8}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget v7, p0, Lcom/netease/nr/biz/fb/m;->c:I

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/netease/nr/biz/fb/m;->b:I

    iget v10, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v11, v11, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/m;->d:Lcom/netease/util/j/a;

    const v1, 0x7f070065

    invoke-virtual {v0, v2, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/m;->d:Lcom/netease/util/j/a;

    const v1, 0x7f07012b

    invoke-virtual {v0, v3, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/m;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Lcom/netease/nr/biz/fb/r;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/netease/nr/biz/fb/m;->d:Lcom/netease/util/j/a;

    const v8, 0x7f0200b0

    invoke-virtual {v7, v2, v8}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget v7, p0, Lcom/netease/nr/biz/fb/m;->b:I

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/netease/nr/biz/fb/m;->c:I

    iget v10, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v6, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v5, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
