.class Lnet/lawyee/mobilelib/filedownloader/c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lawyee/mobilelib/filedownloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lawyee/mobilelib/filedownloader/c;


# direct methods
.method constructor <init>(Lnet/lawyee/mobilelib/filedownloader/c;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->s(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/c;->t(Lnet/lawyee/mobilelib/filedownloader/c;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->q(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/c;->u(Lnet/lawyee/mobilelib/filedownloader/c;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->e(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/c;->v(Lnet/lawyee/mobilelib/filedownloader/c;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v1}, Lnet/lawyee/mobilelib/filedownloader/c;->j(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/c;->w(Lnet/lawyee/mobilelib/filedownloader/c;)V

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {v0}, Lnet/lawyee/mobilelib/filedownloader/c;->i(Lnet/lawyee/mobilelib/filedownloader/c;)I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lnet/lawyee/mobilelib/filedownloader/c$1;->a:Lnet/lawyee/mobilelib/filedownloader/c;

    invoke-static {p1}, Lnet/lawyee/mobilelib/filedownloader/c;->x(Lnet/lawyee/mobilelib/filedownloader/c;)V

    :cond_4
    :goto_0
    return-void
.end method
