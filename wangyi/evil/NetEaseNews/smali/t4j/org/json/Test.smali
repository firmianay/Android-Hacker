.class public Lt4j/org/json/Test;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Lt4j/org/json/Test$1Obj;

    const-string v1, "A beany object"

    const-wide/high16 v2, 0x4045000000000000L    # 42.0

    invoke-direct {v0, v1, v2, v3, v4}, Lt4j/org/json/Test$1Obj;-><init>(Ljava/lang/String;DZ)V

    :try_start_0
    const-string v1, "<![CDATA[This is a collection of test patterns and examples for org.json.]]>  Ignore the stuff past the end.  "

    invoke-static {v1}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "{     \"list of lists\" : [         [1, 2, 3],         [4, 5, 6],     ] }"

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "<recipe name=\"bread\" prep_time=\"5 mins\" cook_time=\"3 hours\"> <title>Basic bread</title> <ingredient amount=\"8\" unit=\"dL\">Flour</ingredient> <ingredient amount=\"10\" unit=\"grams\">Yeast</ingredient> <ingredient amount=\"4\" unit=\"dL\" state=\"warm\">Water</ingredient> <ingredient amount=\"1\" unit=\"teaspoon\">Salt</ingredient> <instructions> <step>Mix all ingredients together.</step> <step>Knead thoroughly.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Knead again.</step> <step>Place in a bread baking tin.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Bake in the oven at 180(degrees)C for 30 minutes.</step> </instructions> </recipe> "

    invoke-static {v1}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    invoke-static {v1}, Lt4j/org/json/JSONML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    invoke-static {v1}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    const-string v1, "<div id=\"demo\" class=\"JSONML\"><p>JSONML is a transformation between <b>JSON</b> and <b>XML</b> that preserves ordering of document features.</p><p>JSONML can work with JSON arrays or JSON objects.</p><p>Three<br/>little<br/>words</p></div>"

    invoke-static {v1}, Lt4j/org/json/JSONML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    invoke-static {v1}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    const-string v1, "<person created=\"2006-11-11T19:23\" modified=\"2006-12-31T23:59\">\n <firstName>Robert</firstName>\n <lastName>Smith</lastName>\n <address type=\"home\">\n <street>12345 Sixth Ave</street>\n <city>Anytown</city>\n <state>CA</state>\n <postalCode>98765-4321</postalCode>\n </address>\n </person>"

    invoke-static {v1}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/Object;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "{ \"entity\": { \"imageURL\": \"\", \"name\": \"IXXXXXXXXXXXXX\", \"id\": 12336, \"ratingCount\": null, \"averageRating\": null } }"

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lt4j/org/json/JSONStringer;

    invoke-direct {v1}, Lt4j/org/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "single"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "MARIE HAA\'S"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "Johnny"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "MARIE HAA\\\'S"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "foo"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "bar"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "baz"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONWriter;->array()Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONWriter;->object()Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "quux"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "Thanks, Josh!"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONWriter;->endObject()Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    move-result-object v1

    const-string v2, "obj keys"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-static {v0}, Lt4j/org/json/JSONObject;->getNames(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONWriter;->endObject()Lt4j/org/json/JSONWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Lt4j/org/json/JSONStringer;

    invoke-direct {v2}, Lt4j/org/json/JSONStringer;-><init>()V

    invoke-virtual {v2}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    move-result-object v2

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->array()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->array()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->array()Lt4j/org/json/JSONWriter;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endObject()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lt4j/org/json/JSONStringer;

    invoke-direct {v1}, Lt4j/org/json/JSONStringer;-><init>()V

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->array()Lt4j/org/json/JSONWriter;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONStringer;->value(J)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->array()Lt4j/org/json/JSONWriter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->array()Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    const-string v2, "empty-array"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->array()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    const-string v2, "answer"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const-wide/16 v3, 0x2a

    invoke-virtual {v2, v3, v4}, Lt4j/org/json/JSONWriter;->value(J)Lt4j/org/json/JSONWriter;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONWriter;->value(Z)Lt4j/org/json/JSONWriter;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONWriter;->value(Z)Lt4j/org/json/JSONWriter;

    const-string v2, "big"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const-wide v3, 0x53e27ed9d50e89b3L    # 1.23456789E96

    invoke-virtual {v2, v3, v4}, Lt4j/org/json/JSONWriter;->value(D)Lt4j/org/json/JSONWriter;

    const-string v2, "small"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    const-wide v3, 0x2f576be43f1e4b54L    # 1.23456789E-80

    invoke-virtual {v2, v3, v4}, Lt4j/org/json/JSONWriter;->value(D)Lt4j/org/json/JSONWriter;

    const-string v2, "empty-object"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->object()Lt4j/org/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONWriter;->endObject()Lt4j/org/json/JSONWriter;

    const-string v2, "long"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONStringer;->value(J)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endObject()Lt4j/org/json/JSONWriter;

    const-string v2, "two"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endArray()Lt4j/org/json/JSONWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->value(Z)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endArray()Lt4j/org/json/JSONWriter;

    const-wide v2, 0x4058a66666666666L    # 98.6

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONStringer;->value(D)Lt4j/org/json/JSONWriter;

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONStringer;->value(D)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endObject()Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    const-string v2, "one"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONStringer;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONStringer;->value(D)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endObject()Lt4j/org/json/JSONWriter;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONStringer;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->endArray()Lt4j/org/json/JSONWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Lt4j/org/json/JSONArray;

    invoke-virtual {v1}, Lt4j/org/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Lt4j/org/json/JSONArray;

    invoke-direct {v2, v1}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "aString"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "aNumber"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "aBoolean"

    aput-object v3, v1, v2

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2, v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v1, "Testing JSONString interface"

    invoke-virtual {v2, v1, v0}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    const-string v1, "{slashes: \'///\', closetag: \'</script>\', backslash:\'\\\\\', ei: {quotes: \'\"\\\'\'},eo: {a: \'\"quoted\"\', b:\"don\'t\"}, quotes: [\"\'\", \'\"\']}"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    const-string v1, "{foo: [true, false,9876543210,    0.0, 1.00000001,  1.000000000001, 1.00000000000000001, .00000000000000001, 2.00, 0.1, 2e100, -32,[],{}, \"string\"],   to   : null, op : \'Good\',ten:10} postfix comment"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "String"

    const-string v2, "98.6"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "JSONObject"

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2}, Lt4j/org/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "JSONArray"

    new-instance v2, Lt4j/org/json/JSONArray;

    invoke-direct {v2}, Lt4j/org/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "int"

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;I)Lt4j/org/json/JSONObject;

    const-string v1, "double"

    const-wide v2, 0x45f8ee90ff6c373eL    # 1.2345678901234568E29

    invoke-virtual {v0, v1, v2, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;D)Lt4j/org/json/JSONObject;

    const-string v1, "true"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Z)Lt4j/org/json/JSONObject;

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Z)Lt4j/org/json/JSONObject;

    const-string v1, "null"

    sget-object v2, Lt4j/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "bool"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "zero"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v1, v2, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;D)Lt4j/org/json/JSONObject;

    const-string v1, "\\u2028"

    const-string v2, "\u2028"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "\\u2029"

    const-string v2, "\u2029"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "foo"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    const/16 v2, 0x29a

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(I)Lt4j/org/json/JSONArray;

    const-wide v2, 0x409f47f5c28f5c29L    # 2001.99

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONArray;->put(D)Lt4j/org/json/JSONArray;

    const-string v2, "so \"fine\"."

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    const-string v2, "so <fine>."

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Z)Lt4j/org/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Z)Lt4j/org/json/JSONArray;

    new-instance v2, Lt4j/org/json/JSONArray;

    invoke-direct {v2}, Lt4j/org/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2}, Lt4j/org/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    const-string v1, "keys"

    invoke-static {v0}, Lt4j/org/json/JSONObject;->getNames(Lt4j/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "String"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  bool: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "bool"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "to"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  true: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "true"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   foo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "foo"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    op: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "op"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   ten: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ten"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  oops: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "oops"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<xml one = 1 two=\' \"2\" \'><five></five>First \t&lt;content&gt;<five></five> This is \"content\". <three>  3  </three>JSON does not preserve the sequencing of elements and contents.<three>  III  </three>  <three>  T H R E E</three><four/>Content text is an implied structure in XML. <six content=\"6\"/>JSON does not have implied structure:<seven>7</seven>everything is explicit.<![CDATA[CDATA blocks<are><supported>!]]></xml>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<xml do=\'0\'>uno<a re=\'1\' mi=\'2\'>dos<b fa=\'3\'/>tres<c>true</c>quatro</a>cinqo<d>seis<e/></d></xml>"

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<mapping><empty/>   <class name = \"Customer\">      <field name = \"ID\" type = \"string\">         <bind-xml name=\"ID\" node=\"attribute\"/>      </field>      <field name = \"FirstName\" type = \"FirstName\"/>      <field name = \"MI\" type = \"MI\"/>      <field name = \"LastName\" type = \"LastName\"/>   </class>   <class name = \"FirstName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"MI\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"LastName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class></mapping>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\" ?><Book Author=\"Anonymous\"><Title>Sample Book</Title><Chapter id=\"1\">This is chapter 1. It is not very long or interesting.</Chapter><Chapter id=\"2\">This is chapter 2. Although it is longer than chapter 1, it is not any more interesting.</Chapter></Book>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE bCard \'http://www.cs.caltech.edu/~adam/schemas/bCard\'><bCard><?xml default bCard        firstname = \'\'        lastname  = \'\' company   = \'\' email = \'\' homepage  = \'\'?><bCard        firstname = \'Rohit\'        lastname  = \'Khare\'        company   = \'MCI\'        email     = \'khare@mci.net\'        homepage  = \'http://pest.w3.org/\'/><bCard        firstname = \'Adam\'        lastname  = \'Rifkin\'        company   = \'Caltech Infospheres Project\'        email     = \'adam@cs.caltech.edu\'        homepage  = \'http://www.cs.caltech.edu/~adam/\'/></bCard>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\"?><customer>    <firstName>        <text>Fred</text>    </firstName>    <ID>fbs0001</ID>    <lastName> <text>Scerbo</text>    </lastName>    <MI>        <text>B</text>    </MI></customer>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<!ENTITY tp-address PUBLIC \'-//ABC University::Special Collections Library//TEXT (titlepage: name and address)//EN\' \'tpspcoll.sgm\'><list type=\'simple\'><head>Repository Address </head><item>Special Collections Library</item><item>ABC University</item><item>Main Library, 40 Circle Drive</item><item>Ourtown, Pennsylvania</item><item>17654 USA</item></list>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<test intertag status=ok><empty/>deluxe<blip sweet=true>&amp;&quot;toot&quot;&toot;&#x41;</blip><x>eks</x><w>bonus</w><w>bonus2</w></test>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "GET / HTTP/1.0\nAccept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*\nAccept-Language: en-us\nUser-Agent: Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; T312461; Q312461)\nHost: www.nokko.com\nConnection: keep-alive\nAccept-encoding: gzip, deflate\n"

    invoke-static {v0}, Lt4j/org/json/HTTP;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/HTTP;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "HTTP/1.1 200 Oki Doki\nDate: Sun, 26 May 2002 17:38:52 GMT\nServer: Apache/1.3.23 (Unix) mod_perl/1.26\nKeep-Alive: timeout=15, max=100\nConnection: Keep-Alive\nTransfer-Encoding: chunked\nContent-Type: text/html\n"

    invoke-static {v0}, Lt4j/org/json/HTTP;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/HTTP;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    const-string v1, "{nix: null, nux: false, null: \'null\', \'Request-URI\': \'/\', Method: \'GET\', \'HTTP-Version\': \'HTTP/1.0\'}"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNull: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "nix"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   has: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "nix"

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/HTTP;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><ns1:doGoogleSearch xmlns:ns1=\"urn:GoogleSearch\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><key xsi:type=\"xsd:string\">GOOGLEKEY</key> <q xsi:type=\"xsd:string\">\'+search+\'</q> <start xsi:type=\"xsd:int\">0</start> <maxResults xsi:type=\"xsd:int\">10</maxResults> <filter xsi:type=\"xsd:boolean\">true</filter> <restrict xsi:type=\"xsd:string\"></restrict> <safeSearch xsi:type=\"xsd:boolean\">false</safeSearch> <lr xsi:type=\"xsd:string\"></lr> <ie xsi:type=\"xsd:string\">latin1</ie> <oe xsi:type=\"xsd:string\">latin1</oe></ns1:doGoogleSearch></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    const-string v1, "{Envelope: {Body: {\"ns1:doGoogleSearch\": {oe: \"latin1\", filter: true, q: \"\'+search+\'\", key: \"GOOGLEKEY\", maxResults: 10, \"SOAP-ENV:encodingStyle\": \"http://schemas.xmlsoap.org/soap/encoding/\", start: 0, ie: \"latin1\", safeSearch:false, \"xmlns:ns1\": \"urn:GoogleSearch\"}}}}"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "  f%oo = b+l=ah  ; o;n%40e = t.wo "

    invoke-static {v0}, Lt4j/org/json/CookieList;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/CookieList;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "f%oo=blah; secure ;expires = April 24, 2002"

    invoke-static {v0}, Lt4j/org/json/Cookie;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/Cookie;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    const-string v1, "{script: \'It is not allowed in HTML to send a close script tag in a string<script>because it confuses browsers</script>so we insert a backslash before the /\'}"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONTokener;

    const-string v1, "{op:\'test\', to:\'session\', pre:1}{op:\'test\', to:\'session\', pre:2}"

    invoke-direct {v0, v1}, Lt4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Lt4j/org/json/JSONTokener;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "pre"

    invoke-virtual {v1, v4}, Lt4j/org/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONTokener;->skipTo(C)C

    move-result v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(I)V

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Lt4j/org/json/JSONTokener;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "No quotes, \'Single Quotes\', \"Double Quotes\"\n1,\'2\',\"3\"\n,\'It is \"good,\"\', \"It works.\"\n\n"

    invoke-static {v0}, Lt4j/org/json/CDL;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/CDL;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONArray;

    const-string v1, " [\"<escape>\", next is an implied null , , ok,] "

    invoke-direct {v0, v1}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lt4j/org/json/JSONObject;

    const-string v2, "{ fun => with non-standard forms ; forgiving => This package can be used to parse formats that are similar to but not stricting conforming to JSON; why=To make it easier to migrate existing data to JSON,one = [[1.00]]; uno=[[{1=>1}]];\'+\':+6e66 ;pluses=+++;empty = \'\' , \'double\':0.666,true: TRUE, false: FALSE, null=NULL;[true] = [[!,@;*]]; string=>  o. k. ; \r oct=0666; hex=0x666; dec=666; o=0999; noh=0x0x}"

    invoke-direct {v1, v2}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "true"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "It\'s all good"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lt4j/org/json/JSONObject;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "dec"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "oct"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hex"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "missing"

    aput-object v5, v3, v4

    invoke-direct {v2, v1, v3}, Lt4j/org/json/JSONObject;-><init>(Lt4j/org/json/JSONObject;[Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Lt4j/org/json/JSONStringer;

    invoke-direct {v3}, Lt4j/org/json/JSONStringer;-><init>()V

    invoke-virtual {v3}, Lt4j/org/json/JSONStringer;->array()Lt4j/org/json/JSONWriter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/org/json/JSONWriter;->endArray()Lt4j/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v1, Lt4j/org/json/JSONObject;

    const-string v0, "{string: \"98.6\", long: 2147483648, int: 2147483647, longer: 9223372036854775807, double: 9223372036854775808}"

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\ngetInt"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "int    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "int"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "long"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "longer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "longer"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "double "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "double"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "string"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\ngetLong"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "int    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "int"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "long"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "longer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "longer"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "double "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "double"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "string"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\ngetDouble"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "int    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "int"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "long   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "long"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "longer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "longer"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "double "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "double"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "string"

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "good sized"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v0, v2, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;J)Lt4j/org/json/JSONObject;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONArray;

    const-string v2, "[2147483647, 2147483648, 9223372036854775807, 9223372036854775808]"

    invoke-direct {v0, v2}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nKeys: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lt4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\naccumulate: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lt4j/org/json/JSONObject;

    invoke-direct {v0}, Lt4j/org/json/JSONObject;-><init>()V

    const-string v1, "stooge"

    const-string v2, "Curly"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "stooge"

    const-string v2, "Larry"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "stooge"

    const-string v2, "Moe"

    invoke-virtual {v0, v1, v2}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v1, "stooge"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "Shemp"

    invoke-virtual {v1, v2, v3}, Lt4j/org/json/JSONArray;->put(ILjava/lang/Object;)Lt4j/org/json/JSONArray;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nwrite:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v0, "<xml empty><a></a><a>1</a><a>22</a><a>333</a></xml>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<book><chapter>Content of the first chapter</chapter><chapter>Content of the second chapter      <chapter>Content of the first subchapter</chapter>      <chapter>Content of the second subchapter</chapter></chapter><chapter>Third Chapter</chapter></book>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lt4j/org/json/JSONObject;

    invoke-direct {v2, v1}, Lt4j/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v3, Lt4j/org/json/JSONArray;

    invoke-direct {v3, v0}, Lt4j/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v4, "stooge"

    const-string v5, "Joe DeRita"

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "stooge"

    const-string v5, "Shemp"

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "stooges"

    const-string v5, "Curly"

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "stooges"

    const-string v5, "Larry"

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "stooges"

    const-string v5, "Moe"

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "stoogearray"

    const-string v5, "stooges"

    invoke-virtual {v2, v5}, Lt4j/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    const-string v4, "map"

    invoke-virtual {v2, v4, v1}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Lt4j/org/json/JSONObject;

    const-string v4, "collection"

    invoke-virtual {v2, v4, v0}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Collection;)Lt4j/org/json/JSONObject;

    const-string v4, "array"

    invoke-virtual {v2, v4, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    invoke-virtual {v3, v1}, Lt4j/org/json/JSONArray;->put(Ljava/util/Map;)Lt4j/org/json/JSONArray;

    invoke-virtual {v3, v0}, Lt4j/org/json/JSONArray;->put(Ljava/util/Collection;)Lt4j/org/json/JSONArray;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "{plist=Apple; AnimalSmells = { pig = piggish; lamb = lambish; worm = wormy; }; AnimalSounds = { pig = oink; lamb = baa; worm = baa;  Lisa = \"Why is the worm talking like a lamb?\" } ; AnimalColors = { pig = pink; lamb = black; worm = pink; } } "

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, " (\"San Francisco\", \"New York\", \"Seoul\", \"London\", \"Seattle\", \"Shanghai\")"

    new-instance v2, Lt4j/org/json/JSONArray;

    invoke-direct {v2, v0}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "<a ichi=\'1\' ni=\'2\'><b>The content of b</b> and <c san=\'3\'>The content of c</c><d>do</d><e></e><d>re</d><f/><d>mi</d></a>"

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nTesting Exceptions: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lt4j/org/json/JSONArray;

    invoke-direct {v1}, Lt4j/org/json/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :try_start_2
    invoke-virtual {v1, v4, v5}, Lt4j/org/json/JSONArray;->put(D)Lt4j/org/json/JSONArray;

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    invoke-virtual {v1, v4, v5}, Lt4j/org/json/JSONArray;->put(D)Lt4j/org/json/JSONArray;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    :goto_1
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "stooge"

    invoke-virtual {v3, v2}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintStream;->println(D)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    :try_start_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "howard"

    invoke-virtual {v3, v2}, Lt4j/org/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintStream;->println(D)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    :try_start_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    const-string v4, "howard"

    invoke-virtual {v3, v2, v4}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_4
    :try_start_9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintStream;->println(D)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_5
    :try_start_b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :goto_6
    :try_start_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    invoke-virtual {v1, v4, v5}, Lt4j/org/json/JSONArray;->put(D)Lt4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :goto_7
    :try_start_f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    const-string v0, "<a><b>    "

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-result-object v2

    :goto_8
    :try_start_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :try_start_12
    const-string v0, "<a></b>    "

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    move-result-object v2

    :goto_9
    :try_start_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :try_start_14
    const-string v0, "<a></a    "

    invoke-static {v0}, Lt4j/org/json/XML;->toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    move-result-object v2

    :goto_a
    :try_start_15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :try_start_16
    new-instance v0, Lt4j/org/json/JSONArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    :goto_b
    :try_start_17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    :try_start_18
    const-string v0, "[)"

    new-instance v1, Lt4j/org/json/JSONArray;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    :goto_c
    :try_start_19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    :try_start_1a
    const-string v0, "<xml"

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    :goto_d
    :try_start_1b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    :try_start_1c
    const-string v0, "<right></wrong>"

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    :goto_e
    :try_start_1d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    :try_start_1e
    const-string v0, "{\"koda\": true, \"koda\": true}"

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1, v0}, Lt4j/org/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f

    :try_start_1f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    :goto_f
    :try_start_20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    :try_start_21
    new-instance v0, Lt4j/org/json/JSONStringer;

    invoke-direct {v0}, Lt4j/org/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lt4j/org/json/JSONStringer;->object()Lt4j/org/json/JSONWriter;

    move-result-object v0

    const-string v2, "bosanda"

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    const-string v2, "MARIE HAA\'S"

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    const-string v2, "bosanda"

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONWriter;->key(Ljava/lang/String;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    const-string v2, "MARIE HAA\\\'S"

    invoke-virtual {v0, v2}, Lt4j/org/json/JSONWriter;->value(Ljava/lang/Object;)Lt4j/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/org/json/JSONWriter;->endObject()Lt4j/org/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10

    :goto_10
    return-void

    :cond_1
    :try_start_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_11
    :try_start_23
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_7

    :catch_8
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_8

    :catch_9
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    :catch_a
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    :catch_b
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_b

    :catch_c
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_c

    :catch_d
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_d

    :catch_e
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_e

    :catch_f
    move-exception v0

    move-object v1, v2

    :goto_12
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_f

    :catch_10
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    goto/16 :goto_10

    :catch_11
    move-exception v0

    goto :goto_12

    :catch_12
    move-exception v0

    goto/16 :goto_11

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
