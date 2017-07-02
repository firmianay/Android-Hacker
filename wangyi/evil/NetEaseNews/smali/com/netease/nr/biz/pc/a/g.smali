.class Lcom/netease/nr/biz/pc/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/f;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->b(Lcom/netease/nr/biz/pc/a/f;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/g;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/g;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;I)I

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->c(Lcom/netease/nr/biz/pc/a/f;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    new-instance v1, Lcom/netease/nr/biz/pc/a/a;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/nr/biz/pc/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;Lcom/netease/nr/biz/pc/a/a;)Lcom/netease/nr/biz/pc/a/a;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->b(Lcom/netease/nr/biz/pc/a/f;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v1, "@"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/a/a;->a()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/f;->d(Lcom/netease/nr/biz/pc/a/f;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/a/f;->a(Lcom/netease/nr/biz/pc/a/f;)Lcom/netease/nr/biz/pc/a/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/pc/a/g;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v4}, Lcom/netease/nr/biz/pc/a/f;->d(Lcom/netease/nr/biz/pc/a/f;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/pc/a/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
