#include <sourcemod>

public Plugin myinfo =
{
	name        = "[GENEL] Sohbet Temizle !",
	author      = "Caferly!",
	version     = "1.0",
	url         = "https://hovn.com"
};

public void OnPluginStart()
{
	LoadTranslations("caferly.sohbettemizle.phrases");
	RegAdminCmd("sm_temizle", Command_Temizle, ADMFLAG_CHAT, "Sohbeti silen kişiyi sildikten sonra gösterir.");
	RegAdminCmd("sm_stemizle", Command_STemizle, ADMFLAG_CHAT, "Chatte uyarı çıkartmadan temizlemeyi sağlar");
}

public Action Command_Temizle(client, args)
{
	for (int i = 0; i < 50; i++)
	{
		PrintToChatAll("\n ");
	}

	PrintToChatAll("\x04[Caferly] \x01%t", "Command_Temizle", client);

	return Plugin_Handled;
}

public Action Command_STemizle(client, args)
{
	for (int i = 0; i < 50; i++)
	{
		PrintToChatAll("\n ");
	}

	return Plugin_Handled;
}