#========================================================================
#	�z�s�X�g�[���[
#	�X�e�[�W3�@VS���g
#	�ꏊ�F�|��
#	�X�e�[�W�^�C�g��
#	   �u�{�[�����y�����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,futo,-360,0,false
,DefineObject,mokou,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(704);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,futo_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,mokou,-1280,

# 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�������܂�\n���q����l�c�c\,a11x2,0,0
,ClearBalloon,mokou

,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"



,SetFocus,mokou		,
,ImageDef,mokou,���g_�{1,0,0
���҂��H\,a05x2,0,0
,ClearBalloon,mokou


,ImageDef,futo,�z�s_��1,0,0
,th145_Show,futo,-1280	,
,SetFocus,futo		,
������\n�{�[����q���ē����I\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�Ӂ[\,a05x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�����H\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�܂��I�J���g�{�[���̘b��\n�ŋߊ񂱂����Č����z����������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�S���Ԃ蓢���ɂ��Ă��������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�s���҂ɏ����𒧂����Ȃ�\n���C�̍����ł͖�����\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�قق�\n������܂��s���҂ł�������\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���H\n�܂������O�c�c\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�����x����\n�o�������҂ł���\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�ӂ��ӂ���\n�����͋��������A�ʔ���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�󂯂ė��Ƃ��I\n�ǂ�������Ɏ��˂邩�������I\,b15x3,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
���A����\n�q����̂̓I�J���g�{�[��\n�����ŗǂ���\,c15x3,0,0
,ClearBalloon,futo





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,futo,-1280,&
,th145_Hide,mokou,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End





# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,mokou
�{�[���ȂǗv���ƌ����̂�\n�ǂ�ǂ�W�܂��Ă��܂�\,a15x3,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�z�s�t�F�C�X�\���J�n


,SetFocus,futo		,
��[��\n�{�[���𒸂������I\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�c�c�Ă���Ȃɑ�ʂ�\n�����Ă��́H\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,mokou		,
���[\n�o�b�^�o�b�^�Ԃ蓢����\n���Ă������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
�S���������\n���X����������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�ȒP�������̂�\n����ł����Z��\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�G1,0,0
�얲�͎c��̏��L�҂�\n�l�l�������ƌ����Ă���\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�f1,0,0
��l�͎����Ƃ������Ƃ����\n��c��͓�l�c�c\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
�ł����̂�����l��\n���q�l������c�c\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,
,ImageDef,futo,�z�s_�]1,0,0
�悵���߂�\n���낻��ז����邼�I\,a11x2,0,0
,ClearBalloon,futo


,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���̑ΐ푊��̏��ɍs���̂�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�C��t�����\n�����͖����̒|�т�\,c11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����񂾂���\n�ȒP�ɂ͔������Ȃ���\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
������\n��قǂ͎��炵�܂���\n���ē������肢���܂���\,a15x3,0,0
,ClearBalloon,futo




,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
