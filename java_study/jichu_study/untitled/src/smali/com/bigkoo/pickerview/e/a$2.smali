.class Lcom/bigkoo/pickerview/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/e/a;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a$2;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a$2;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/a;->a(Lcom/bigkoo/pickerview/e/a;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/bigkoo/pickerview/e/a$2$1;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/e/a$2$1;-><init>(Lcom/bigkoo/pickerview/e/a$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
