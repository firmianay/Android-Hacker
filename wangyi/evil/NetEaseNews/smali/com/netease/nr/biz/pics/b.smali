.class public Lcom/netease/nr/biz/pics/b;
.super Lcom/netease/nr/base/fragment/h;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/z;
.implements Lcom/netease/nr/biz/ad/r;
.implements Lcom/netease/nr/biz/sns/a/d/b;
.implements Lcom/netease/util/c/d;
.implements Lcom/netease/util/fragment/e;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final e:[I


# instance fields
.field private A:Lcom/netease/nr/base/view/d;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/util/List;

.field private F:I

.field private G:Z

.field private H:Lcom/netease/nr/base/c/a/c;

.field private I:Lcom/netease/ad/e;

.field private f:Lcom/netease/nr/base/c/a/m;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private u:Lcom/netease/nr/base/a/i;

.field private v:Lcom/netease/nr/base/view/ImageViewPager;

.field private w:Landroid/view/LayoutInflater;

.field private x:Lcom/netease/nr/biz/i/a/a/d;

.field private y:Lcom/netease/nr/base/view/a;

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/nr/biz/pics/b;->e:[I

    const-class v0, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/nr/biz/pics/b;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02020b
        0x7f020209
        0x7f02020a
        0x7f020207
        0x7f020208
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->q:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    iput-boolean v1, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    iput-boolean v1, p0, Lcom/netease/nr/biz/pics/b;->D:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/pics/b;->F:I

    iput-boolean v1, p0, Lcom/netease/nr/biz/pics/b;->G:Z

    return-void
.end method

.method private D()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ImageViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "imgurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/util/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c7

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/netease/nr/base/b/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netease/util/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b01c5

    invoke-static {v0, v2, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/netease/newsreader/netease_down_pic/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c6

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0064

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<html><head></head><body style=\"margin:0px; padding:0px;\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<center><div style=\"color:#464646;font-size:18px;font-weight:bold;\" >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const-string v1, "<--insert-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/netease/ad/e;)Ljava/util/Map;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "clientcover1"

    invoke-virtual {p1}, Lcom/netease/ad/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setname"

    invoke-virtual {p1}, Lcom/netease/ad/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "admap"

    const-string v2, "admap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 6

    const v4, 0x186a3

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v4, v5}, Lcom/netease/nr/base/view/a;->a(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v2, v5}, Lcom/netease/nr/base/view/a;->a(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v4, v2}, Lcom/netease/nr/base/view/a;->a(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, v2, v2}, Lcom/netease/nr/base/view/a;->a(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const-string v0, "18562"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "24079"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->C:Z

    if-eqz v0, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "note"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0c01af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget v0, p0, Lcom/netease/nr/biz/pics/b;->F:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/netease/nr/biz/pics/b;->F:I

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "PICTURES"

    const-string v2, "\u56fe\u7247PV"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->getCount()I

    move-result v0

    goto :goto_2
.end method

.method private a(Lcom/netease/nr/base/view/a;)V
    .locals 4

    const v3, 0x186a3

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020208

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    :goto_0
    const/16 v0, 0x64

    const v1, 0x7f02020b

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    const/16 v0, 0x65

    const v1, 0x7f020209

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    const/16 v0, 0x67

    const v1, 0x7f020207

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pics/b;->c(Lcom/netease/nr/base/view/a;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pics/b;->b(Lcom/netease/nr/base/view/a;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    const v0, 0x7f0201fd

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->A:Lcom/netease/nr/base/view/d;

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;ILandroid/widget/ListAdapter;)V

    invoke-virtual {p1, v3}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->c(I)V

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->b(I)V

    const v1, 0x7f0201f7

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(I)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f02020a

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pics/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->D()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pics/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pics/b;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pics/b;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/pics/b;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pics/b;Ljava/lang/String;Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;Lcom/netease/nr/base/view/ImageViewTouch;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pics/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 4

    new-instance v1, Lcom/netease/util/cache/i;

    invoke-direct {v1}, Lcom/netease/util/cache/i;-><init>()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "__big"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    invoke-virtual {v0, v1, p2}, Lcom/netease/nr/base/c/a/m;->b(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object p1, v1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "channel"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setid"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imgTitle"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clientcover"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "have_relative"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/b;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "imgurl"

    const-string v4, "src"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "note"

    const-string v4, "alt"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/biz/i/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    return-object v0
.end method

.method private b(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v0, p1, 0x64

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v5}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    invoke-virtual {v1, p0, v4}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->j:Ljava/lang/String;

    iput v6, v2, Lcom/netease/nr/base/c/g;->d:I

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/netease/nr/base/c/g;->c:I

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    invoke-virtual {v1, v0, v6}, Lcom/netease/nr/base/c/e;->a(II)I

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c4

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->b(Lcom/netease/nr/base/c/g;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->D()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/netease/nr/base/view/a;)V
    .locals 2

    const v0, 0x7f03008d

    invoke-static {p1, v0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/a/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    return-object v0
.end method

.method private c(Lcom/netease/nr/base/view/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {p1, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    const/16 v2, 0x65

    invoke-virtual {p1, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    const/16 v2, 0x67

    invoke-virtual {p1, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method private c(Z)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_4

    move v1, v5

    :goto_1
    if-ge v1, v4, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    aget-object v0, v2, v4

    sget-object v3, Lcom/netease/nr/biz/pics/b;->e:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    aget-object v0, v2, v1

    sget-object v3, Lcom/netease/nr/biz/pics/b;->e:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_3
    if-ge v0, v4, :cond_5

    aget-object v1, v2, v0

    sget-object v3, Lcom/netease/nr/biz/pics/b;->e:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    new-instance v0, Lcom/netease/nr/biz/pics/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->z:Ljava/util/List;

    const v3, 0x7f03008c

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pics/i;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->A:Lcom/netease/nr/base/view/d;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->A:Lcom/netease/nr/base/view/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/d;->a(Z)V

    goto/16 :goto_0
.end method

.method private d(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8ddf\u8d34"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic d(Lcom/netease/nr/biz/pics/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/pics/b;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->w:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/c/a/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->H:Lcom/netease/nr/base/c/a/c;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/view/ImageViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    return-object v0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->E:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic k(Lcom/netease/nr/biz/pics/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "picset_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->j()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private l()Z
    .locals 3

    new-instance v0, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->j:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/netease/nr/base/c/g;->d:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->D:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/netease/nr/biz/pics/b;->D:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pics/m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->h()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "pic_json"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/util/e/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->h()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "url"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/ad/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "pic_boardid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "pic_docid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "pic_setname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    :cond_6
    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->p()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/pics/b;->F:I

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->notifyDataSetChanged()V

    :cond_9
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->l_()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private n()V
    .locals 1

    new-instance v0, Lcom/netease/nr/biz/pics/f;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pics/f;-><init>(Lcom/netease/nr/biz/pics/b;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    return-void
.end method

.method private o()Z
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/pics/g;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pics/g;-><init>(Lcom/netease/nr/biz/pics/b;)V

    new-instance v1, Lcom/netease/nr/biz/pics/h;

    invoke-direct {v1}, Lcom/netease/nr/biz/pics/h;-><init>()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/nr/biz/pics/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/biz/pics/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/nr/biz/pics/h;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/netease/nr/biz/pics/h;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/pics/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private q()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(I)V

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Z)V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->l()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const/4 v2, 0x0

    const v5, 0x7f0b0070

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "share_www_url"

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    const-string v4, "www"

    invoke-static {v3, v4}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ImageViewPager;->getCurrentItem()I

    move-result v0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const-string v2, "imgurl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "qzone"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "share_pic"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "qqfriends"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "imageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0066

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%img%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b006a

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v2, "share_pic"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "qqfriends"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "title"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appName"

    const-string v2, "\u7f51\u6613\u65b0\u95fb"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "site"

    const-string v2, "\u7f51\u6613\u65b0\u95fb"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, "email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ydnote_content"

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ydnote_title"

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_other"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "share_title"

    const v2, 0x7f0b006c

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_content"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "weixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "yiliao"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "yixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "yixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_d
    const-string v0, "share_title"

    const v2, 0x7f0b0067

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "0096"

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://3g.163.com/touch/photoview.html?from=index&setid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v3, "yixin"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "yixin_timeline"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    const-string v3, "yixin_webview_url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v0, "share_other"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    goto :goto_3

    :cond_10
    const-string v3, "weixin_web_url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 5

    new-instance v0, Lcom/netease/nr/biz/pics/j;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/netease/nr/biz/pics/b;->G:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/pics/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public a(ILandroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;IIII)V
    .locals 5

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ne v2, p2, :cond_1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0c015c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ImageViewTouch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ImageViewTouch;->i()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 4

    const/16 v3, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x7f0c015c

    if-ne v0, v1, :cond_0

    const-string v0, "PicShowFragment"

    const v1, 0x7f020331

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0c01bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v1, 0x7f0c01c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x7f0c015c

    if-ne v0, v1, :cond_0

    const-string v0, "PicShowFragment"

    const v1, 0x7f020331

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0c01bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p2, :cond_0

    const v1, 0x7f0c01c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/biz/ad/q;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "GALLERY"

    invoke-virtual {p1}, Lcom/netease/nr/biz/ad/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/ad/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/util/j/a;)V

    :cond_0
    const v0, 0x7f0c01af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07012f

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c01ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070131

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c01b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070133

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    const v1, 0x7f020202

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v0, "pics_comment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "boardid"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "docid"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "doctitle"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v4, Lcom/netease/nr/biz/i/a/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const v3, 0x1020002

    const-string v4, "pics_comment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_2
    const-string v0, "pics_comment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/base/fragment/g;->a(Landroid/support/v4/app/FragmentTransaction;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-static {v2}, Lcom/netease/nr/base/fragment/g;->b(Landroid/support/v4/app/FragmentTransaction;)V

    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "pics_comment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/netease/nr/biz/i/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/biz/i/a/a;->d(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ImageViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ImageViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ImageViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->C:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->D:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a_(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/netease/nr/biz/pics/b;->b(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->D()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v5}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    invoke-virtual {v1, p0, v4}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :sswitch_5
    new-instance v1, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/nr/base/c/g;->j:Ljava/lang/String;

    iput v6, v2, Lcom/netease/nr/base/c/g;->d:I

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/netease/nr/base/c/g;->c:I

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-direct {p0, v4}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    invoke-virtual {v1, v0, v6}, Lcom/netease/nr/base/c/e;->a(II)I

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c4

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5}, Lcom/netease/nr/biz/pics/b;->c(Z)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->b(Lcom/netease/nr/base/c/g;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01c3

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_2
        0x186a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/Pair;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "photos"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->I:Lcom/netease/ad/e;

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/ad/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/pics/b;->F:I

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/i;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->l_()V

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "boardid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "postid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "setname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/nr/biz/pics/b;->p:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/pics/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/netease/nr/biz/pics/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->r()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->p()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f030094

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j_()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    :cond_0
    return v2
.end method

.method public k_()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->q()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "picset_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v2}, Lcom/netease/nr/base/a/i;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ImageViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->z()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->u:Lcom/netease/nr/base/a/i;

    invoke-virtual {v3}, Lcom/netease/nr/base/a/i;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "imgurl"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netease/util/c/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/netease/util/cache/i;

    invoke-direct {v2}, Lcom/netease/util/cache/i;-><init>()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    :goto_2
    iput-boolean v1, v2, Lcom/netease/util/cache/i;->b:Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, v2, p1}, Lcom/netease/nr/base/c/a/m;->b(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iput-object v0, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->c()V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->C:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->C:Z

    const v0, 0x7f0c01c4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "18562"

    iget-object v4, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "24079"

    iget-object v4, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/netease/nr/biz/pics/b;->C:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/a;->e(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/nr/base/view/a;->e(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0c015c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v3, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pics/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "GALLERY"

    const-string v3, "1"

    invoke-static {v0, v1, v3, p0}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->p()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->B()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->D:Z

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "PICTURES"

    const-string v3, "\u56fe\u7247PV"

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "channel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    const-string v0, "setid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    const-string v0, "imgTitle"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->k:Ljava/lang/String;

    const-string v0, "clientcover"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    const-string v0, "imgsum"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    const-string v0, "pastenum"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->l:Ljava/lang/String;

    const-string v0, "boardid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    const-string v0, "postid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    const-string v0, "read_docid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->r:Ljava/lang/String;

    const-string v0, "real_photoset"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->q:Z

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->q:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?from=real_photoset"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->i:Ljava/lang/String;

    :cond_1
    const-string v0, "from_newspage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->E:Ljava/util/List;

    const-string v0, "have_relative"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->G:Z

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/a/m;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/a/m;->a(Lcom/netease/util/c/d;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->H:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->H:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v6}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->H:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/c/a/c;->b(Z)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->E:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/pics/b;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    :goto_0
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->n()V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "picset_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->m()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->f:Lcom/netease/nr/base/c/a/m;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/a/m;->b(Lcom/netease/util/c/d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "GALLERY"

    const-string v2, "1"

    invoke-static {v0, v1, v2, p0}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->w:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->A()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->b(Lcom/netease/util/fragment/e;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onResume()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "setid"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imgsum"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/b;->a(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pics/b;->a(Z)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->w:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c01c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/netease/nr/biz/pics/c;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pics/c;-><init>(Lcom/netease/nr/biz/pics/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->y:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const-string v1, "18562"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "24079"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const v0, 0x7f0c01c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0c0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v2, v1, v0}, Lcom/netease/nr/biz/i/a/a/d;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    iget-boolean v0, p0, Lcom/netease/nr/biz/pics/b;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->x:Lcom/netease/nr/biz/i/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f0c01c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ImageViewPager;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/ImageViewPager;->a(Lcom/netease/nr/base/view/z;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    new-instance v1, Lcom/netease/nr/biz/pics/d;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pics/d;-><init>(Lcom/netease/nr/biz/pics/b;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/b;->v:Lcom/netease/nr/base/view/ImageViewPager;

    new-instance v1, Lcom/netease/nr/biz/pics/e;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pics/e;-><init>(Lcom/netease/nr/biz/pics/b;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewPager;->a(Lcom/netease/nr/base/view/y;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/FragmentActivity;->a(Lcom/netease/util/fragment/e;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->k()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/netease/nr/biz/pics/b;->r()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/base/view/a;)V

    goto :goto_0
.end method
