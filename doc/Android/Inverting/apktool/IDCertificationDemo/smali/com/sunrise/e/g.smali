.class public Lcom/sunrise/e/g;
.super Lcom/sunrise/e/l;


# instance fields
.field private c:Lcom/sunrise/e/s;


# direct methods
.method public constructor <init>(Lcom/sunrise/d/j;Ljava/lang/Class;Lcom/sunrise/h/c;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sunrise/e/l;-><init>(Ljava/lang/Class;Lcom/sunrise/h/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    invoke-interface {v0}, Lcom/sunrise/e/s;->a_()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Lcom/sunrise/d/j;)Lcom/sunrise/e/s;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    return-object v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    invoke-virtual {v0, v1}, Lcom/sunrise/d/j;->a(Lcom/sunrise/h/c;)Lcom/sunrise/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v2, v0, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v0

    iput-object p3, v0, Lcom/sunrise/d/i;->d:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/sunrise/e/g;->b:Ljava/lang/Class;

    invoke-static {v0, p3, v2}, Lcom/sunrise/h/c;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_1
    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    instance-of v0, v0, Lcom/sunrise/e/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    check-cast v0, Lcom/sunrise/e/n;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget v3, v3, Lcom/sunrise/h/c;->i:I

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/sunrise/d/a;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/sunrise/d/a;->h()Lcom/sunrise/d/b;

    move-result-object v0

    iput-object p0, v0, Lcom/sunrise/d/b;->c:Lcom/sunrise/e/l;

    invoke-virtual {p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v1

    iput-object v1, v0, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v0, v0, Lcom/sunrise/h/c;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    instance-of v0, v0, Lcom/sunrise/e/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    check-cast v0, Lcom/sunrise/e/f;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v3, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v4, v1, Lcom/sunrise/h/c;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget v5, v1, Lcom/sunrise/h/c;->i:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/e/f;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sunrise/e/g;->c:Lcom/sunrise/e/s;

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v2, v1}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/sunrise/e/g;->a:Lcom/sunrise/h/c;

    iget-object v1, v1, Lcom/sunrise/h/c;->a:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2, v0}, Lcom/sunrise/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
