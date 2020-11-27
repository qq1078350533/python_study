.class Lcom/lawyee/wenshuapp/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lawyee/wenshuapp/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lawyee/wenshuapp/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lawyee/wenshuapp/a/a;


# direct methods
.method constructor <init>(Lcom/lawyee/wenshuapp/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/a/a$1;->a:Lcom/lawyee/wenshuapp/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/lawyee/wenshuapp/a/a;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lawyee/wenshuapp/a/a$1;->a:Lcom/lawyee/wenshuapp/a/a;

    invoke-static {v0, p1, p2}, Lcom/lawyee/wenshuapp/a/a;->a(Lcom/lawyee/wenshuapp/a/a;ZLjava/lang/String;)V

    return-void
.end method
