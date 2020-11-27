.class Landroid/support/design/e/b$1;
.super Landroid/support/v4/content/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/e/b;->a(Landroid/content/Context;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Landroid/support/v4/content/a/f$a;

.field final synthetic c:Landroid/support/design/e/b;


# direct methods
.method constructor <init>(Landroid/support/design/e/b;Landroid/text/TextPaint;Landroid/support/v4/content/a/f$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    iput-object p2, p0, Landroid/support/design/e/b$1;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Landroid/support/design/e/b$1;->b:Landroid/support/v4/content/a/f$a;

    invoke-direct {p0}, Landroid/support/v4/content/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    invoke-static {v0}, Landroid/support/design/e/b;->a(Landroid/support/design/e/b;)V

    iget-object v0, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/e/b;->a(Landroid/support/design/e/b;Z)Z

    iget-object v0, p0, Landroid/support/design/e/b$1;->b:Landroid/support/v4/content/a/f$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a/f$a;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    iget v1, v0, Landroid/support/design/e/b;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/e/b;->a(Landroid/support/design/e/b;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    iget-object v1, p0, Landroid/support/design/e/b$1;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/e/b;->a(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Landroid/support/design/e/b$1;->c:Landroid/support/design/e/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/e/b;->a(Landroid/support/design/e/b;Z)Z

    iget-object v0, p0, Landroid/support/design/e/b$1;->b:Landroid/support/v4/content/a/f$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a/f$a;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
