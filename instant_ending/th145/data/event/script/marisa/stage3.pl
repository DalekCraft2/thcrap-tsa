#========================================================================
#	���J�������X�g�[���[
#	�X�e�[�W3�@VS������
#	�ꏊ�F�n��a
#	�X�e�[�W�^�C�g��
#	   �u�����ĐU��Ԃ�ȁv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/marisa.csv"
,LoadImageDef,"data/event/pic/koishi.csv"

#�t�F�C�X�摜
,DefineObject,marisa,-360,0,false
,DefineObject,koishi,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,marisa_label,50,360,false
,DefineObject,koishi_label,1120,360,false

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,koishi,������_��1,0,0

#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

# 2P�L�����X�e�[�W������o��
#,Function,GameStory_2P_In_Under(),
#,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
,th145_Show,marisa,-1280	,#�얲�t�F�C�X�\���J�n
�n��͂��炩���T�����悤����\n�c��͒n�ꐢ�E�ɂ��邩����\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_��1,0,0
,th145_Show,koishi,-1280	,#�������t�F�C�X�\���J�n
�������[��\,a05x2,0,0
,ClearBalloon,koishi

#�Љ�J�b�g�\���@�������́u������_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,koishi

,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

# ********************************************
# ********************************************

#1P�ォ��o��
#,Function,GameStory_1P_In_Side(),
#,Function,"function main(){ for (local i=0; i < 90; i++) suspend(); }"

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�����������A�s�s�`����\n�n���܂ōL�܂��Ă���񂩂˂�\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_�f1,0,0
�������[��\n���͍������ɂ���Ǝv���܂��[�H\,a15x3,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�f1,0,0
�l�Ԃ̉������Ȃ�����\n�\�Ȃ�čL�܂�Ȃ����c�c\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�]1,0,0
���������n��̓z���\n�s�s�`���Ȃ�ăn�C�J���Ȃ����\n������Ȃ�����\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_�]1,0,0
�������[��\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
���������牽�����������\n���̉����H\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��2,0,0
���������Ă����\n�s�s�`���̈��Ȃ̂��H\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_��1,0,0
�������[��\n�����˂�\,a05x2,0,0
,ClearBalloon,koishi

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_��1,0,0
�M���̖ڂ̑O�ɋ����\,a11x2,0,0
,ClearBalloon,koishi





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,koishi,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -----------------
# �퓬����b
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,koishi,������_��1,0,0

,Sleep,5

#,Move,marisa,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,marisa,-1280,&,#�������t�F�C�X�\���J�n
,th145_Show,koishi,-1280,#�������t�F�C�X�\���J�n

,SetFocus,koishi		,#�������L�������w��
,ImageDef,koishi,������_��1,0,0
,th145_Show,koishi,-1280	,#&, #�������t�F�C�X�\���J�n
����A\,a11x2,0,0
,ClearBalloon,koishi

#�t�L�_�V�̈ꊇ�����@��������s����܂ŕ��o���͍ی��Ȃ���O�ɑ�����
,ClearBalloon,marisa
,ClearBalloon,koishi

#���҃t�F�C�X�P��
,th145_Hide,marisa,-1280,&
,th145_Hide,koishi,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,marisa,������_��1,0,0
,ImageDef,koishi,������_�]1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,koishi,-1280	,#�������t�F�C�X�\���J�n

,SetFocus,koishi		,#�������L�������w��
�Ƃ���ŉ����ɗ����́H\,a11x2,0,0
,ClearBalloon,koishi


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
,ImageDef,marisa,������_��1,0,0
,ImageDef,koishi,������_��1,0,0

,th145_Show,marisa,-1280	,&,#�������t�F�C�X�\���J�n
,th145_Show,koishi,-1280	,#�������t�F�C�X�\���J�n


,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
���[�r�b�N������\n�}�ɏo�Ă���Ȃ�\,c11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
�d�������Ȃ牽�Ƃ��Ȃ���\n���͉����N���邩����Ȃ������\,c15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
�������̃{�[���͉��H\,c11x2,0,0
,ClearBalloon,koishi

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_�]1,0,0
�C�ɂ��Ȃ��ėǂ���\n���ɂ������\,a11x2,0,0
,ClearBalloon,marisa

,SetFocus,marisa		,#�������L�������w��
,ImageDef,marisa,������_��1,0,0
����ňꉞ���W�܂����������c�c\n�����N����񂾁H\,a15x3,0,0
,ClearBalloon,marisa

,SetFocus,koishi		,#�������L�������w��
���̊Ԃɂ���Ȃ�\n�����Ă��̂�����@��\,a11x2,0,0
,ClearBalloon,koishi


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
