.class Lcom/bigkoo/pickerview/e/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/e/a;->l()V
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

    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a$5;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a$5;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/a;->b(Lcom/bigkoo/pickerview/e/a;)Lcom/bigkoo/pickerview/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bigkoo/pickerview/e/a$5;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-static {p1}, Lcom/bigkoo/pickerview/e/a;->b(Lcom/bigkoo/pickerview/e/a;)Lcom/bigkoo/pickerview/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a$5;->a:Lcom/bigkoo/pickerview/e/a;

    invoke-interface {p1, v0}, Lcom/bigkoo/pickerview/b/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
