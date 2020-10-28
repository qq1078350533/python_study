.class final Lcom/bigkoo/pickerview/lib/c;
.super Landroid/os/Handler;


# instance fields
.field final a:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/c;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/c;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/c;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    sget-object v0, Lcom/bigkoo/pickerview/lib/WheelView$ACTION;->FLING:Lcom/bigkoo/pickerview/lib/WheelView$ACTION;

    invoke-virtual {p1, v0}, Lcom/bigkoo/pickerview/lib/WheelView;->a(Lcom/bigkoo/pickerview/lib/WheelView$ACTION;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/lib/c;->a:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {p1}, Lcom/bigkoo/pickerview/lib/WheelView;->invalidate()V

    :goto_0
    return-void
.end method
