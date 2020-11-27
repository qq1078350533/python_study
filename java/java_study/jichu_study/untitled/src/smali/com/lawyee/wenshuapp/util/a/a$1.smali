.class Lcom/lawyee/wenshuapp/util/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/util/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/util/a/a;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/util/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a$1;->a:Lcom/lawyee/wenshuapp/util/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object p1, p0, Lcom/lawyee/wenshuapp/util/a/a$1;->a:Lcom/lawyee/wenshuapp/util/a/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lawyee/wenshuapp/util/a/a;->cancel(Z)Z

    return-void
.end method
