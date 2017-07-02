.class Lcom/netease/nr/biz/fb/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Lcom/netease/nr/biz/fb/FeedBackList;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/FeedBackList;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/n;->b:Lcom/netease/nr/biz/fb/FeedBackList;

    iput-object p2, p0, Lcom/netease/nr/biz/fb/n;->a:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/netease/nr/biz/fb/f;->b:Landroid/net/Uri;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/n;->a:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/n;->b:Lcom/netease/nr/biz/fb/FeedBackList;

    invoke-virtual {v1}, Lcom/netease/nr/biz/fb/FeedBackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
