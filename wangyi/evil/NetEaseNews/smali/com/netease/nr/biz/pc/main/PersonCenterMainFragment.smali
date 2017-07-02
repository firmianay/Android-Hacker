.class public Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/netease/nr/base/view/aw;
.implements Lcom/netease/nr/base/view/ay;
.implements Lcom/netease/nr/biz/pc/a/o;
.implements Lcom/netease/nr/biz/pc/main/s;
.implements Lcom/netease/nr/biz/plugin/c/h;


# instance fields
.field private a:Lcom/netease/nr/biz/plugin/plugin/util/i;

.field private e:Lcom/netease/nr/biz/pc/main/r;

.field private f:Lcom/netease/nr/biz/pc/main/n;

.field private g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

.field private h:Lcom/netease/nr/base/view/MySlidingDrawer;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/pc/main/m;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/main/m;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0171

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0172

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private d(Ljava/util/Map;)V
    .locals 12

    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "nick"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USERDATA_NICKNAME_NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, ""

    move-object v5, v1

    :goto_1
    const-string v1, "head"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "postCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "goldcoin"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->j()V

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "pref_pc_replyme_count"

    invoke-static {v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Lcom/netease/nr/biz/pc/a/n;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v7, v2}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    const v1, 0x7f0c0166

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const v1, 0x7f0c0168

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const v1, 0x7f0c0171

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f0c016c

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0c016d

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/nr/biz/pc/e/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const v2, 0x7f0b015d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v5, v11

    invoke-virtual {p0, v2, v5}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x8

    if-le v2, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v11, 0x8

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c0172

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->h(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v3, 0x7f0b0161

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {p0, v3, v5}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070058

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/16 v8, 0x21

    invoke-virtual {v2, v0, v3, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    const v2, 0x7f0201b5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/n;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/netease/nr/base/c/a/n;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "pref_pc_replyme_count"

    invoke-static {v2, v3, v1}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f0b015a

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0b0163

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    move-object v5, v1

    goto/16 :goto_1
.end method

.method private j()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->a(Ljava/util/Map;)V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const v1, 0x7f0c0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0167

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/pc/main/c;->a(Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const v1, 0x7f0c0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/netease/nr/biz/pc/main/c;->a(Landroid/content/Context;Landroid/widget/ViewFlipper;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 6

    const v1, 0x7f0c016c

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0201b5

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    :cond_1
    const v0, 0x7f0c0166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 11

    const v10, 0x7f0c0171

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x7f0c016c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c016d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "goldcoin"

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/nr/biz/pc/main/c;->h(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v3, 0x7f0b0161

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {p0, v3, v5}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/nr/biz/pc/e/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0b015d

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {p0, v1, v3}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0172

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0163

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "title"

    invoke-static {p1, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->k()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->l()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    :cond_0
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0168

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c016c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c016d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c016a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/pc/main/r;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/netease/nr/biz/pc/main/r;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pc/main/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/main/s;ZZ)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->d(Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/nr/base/c/a/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/n;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/c/a/n;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->k()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->l()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/pc/main/o;

    invoke-direct {v0}, Lcom/netease/nr/biz/pc/main/o;-><init>()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/main/o;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public m_()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0c0166

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0c0168

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0171

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0b015a

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c0172

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c016c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c016d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c016a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0169

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/main/r;->cancel(Z)Z

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pref_pc_replyme_count"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ay;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "UC"

    const-string v2, "\u79ef\u5206\u8be6\u60c5"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/v;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyPorfileFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0166
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->u()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/o;)V

    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->a(Lcom/netease/nr/biz/plugin/c/h;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "account"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/nr/biz/pc/main/r;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pc/main/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/main/s;ZZ)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_0
    new-instance v1, Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;-><init>(Lcom/netease/util/fragment/FragmentActivity;)V

    iput-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a()Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    const-class v2, Lcom/netease/nr/biz/plugin/plugin/util/ExtraPlugin;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Lcom/netease/util/fragment/FragmentActivity;Lcom/netease/nr/biz/plugin/plugin/util/i;Ljava/lang/String;IZ)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netease.service.OffLineService.ACTION_UPDATE_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/pc/main/n;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/biz/pc/main/n;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->f:Lcom/netease/nr/biz/pc/main/n;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->f:Lcom/netease/nr/biz/pc/main/n;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroy()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/o;)V

    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->b(Lcom/netease/nr/biz/plugin/c/h;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->f()V

    iput-object v2, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->e:Lcom/netease/nr/biz/pc/main/r;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/main/r;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->f:Lcom/netease/nr/biz/pc/main/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->f:Lcom/netease/nr/biz/pc/main/n;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/main/n;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->i:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ay;)V

    iput-object v2, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->h:Lcom/netease/nr/base/view/MySlidingDrawer;

    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->e()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0, p3}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0178
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onPause()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->d()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->c()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const v2, 0x7f0c0169

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->b(I)V

    invoke-virtual {v0, v8}, Lcom/netease/nr/base/view/MyImageView;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0c016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MyImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0167

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c016d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0161

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/pc/main/h;

    invoke-direct {v2, p0}, Lcom/netease/nr/biz/pc/main/h;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0178

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    const v2, 0x7f0c0162

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "hasnewversion"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3}, Lcom/netease/util/h/b;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const v4, 0x7f0b0085

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "app_version"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/netease/nr/biz/pc/main/i;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/main/i;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v3, "forUpdate"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object v2, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-virtual {v2}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0c0168

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/netease/nr/base/c/a/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/n;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netease/nr/base/c/a/n;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->c_()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->a(Ljava/util/Map;)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0b015b

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_4
    const v0, 0x7f0c0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->g:Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c0177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0c0173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/main/k;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/biz/pc/main/k;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f0c016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/main/l;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/biz/pc/main/l;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/netease/nr/biz/pc/main/j;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/main/j;-><init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto :goto_4
.end method
