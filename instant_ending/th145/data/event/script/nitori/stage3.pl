#========================================================================
#	�ɂƂ�X�g�[���[
#	�X�e�[�W3�@VS���g
#	�ꏊ�F�_��_
#	�X�e�[�W�^�C�g��
#	   �u��q�ɂ͓O��I�ɛZ�т܂��v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/nitori.csv"
,LoadImageDef,"data/event/pic/mokou.csv"

#�t�F�C�X�摜
,DefineObject,nitori,-360,0,false
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

,Function,"GameStory_PlayBGM(706);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,nitori_label,50,360,false
,DefineObject,mokou_label,1120,360,false

#�����\��ݒ�
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,mokou,���g_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,nitori,-1280	,


,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�{�[���͂���񂩂ˁ[\,a11x2,0,0
,ClearBalloon,nitori

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,mokou,���g_��1,0,0
,th145_Show,mokou,-1280	,#�ɂƂ�t�F�C�X�\���J�n
,SetFocus,mokou		,
�����̎�Ȃ獡�͗��炾\,a11x2,0,0
,ClearBalloon,mokou

#�Љ�J�b�g�\���@���g�́u���g_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,mokou
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
����H\n������Ȃ��炪�c�c\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���ē��̂��ł�\n���������������\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�f1,0,0
�s���҂͂����ɏZ��ł������\n����������ł�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�f1,0,0
�������[\n����Ȃ�d��������\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�{1,0,0
�I�J���g�{�[���𔃂��Ă����\n��q�͂����̓z���炢�Ȃ̂�\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
���O�͉͓���\n�͓����{�[���ɖ|�M����Ă���\n�ƌ����̂�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�܂��K�q�ʂ��W�߂�����\,a11x2,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_�]1,0,0
�b�ς���ċM���̓{�[��\n�v��܂���H\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
�v���\,a05x2,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
,ImageDef,mokou,���g_�]1,0,0
�Ƃ�����ƑO�Ȃ炻�������Ă���\n���͗~����������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
���H\n�Ȃ�ΐ��񐥔�\,a11x2,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
,ImageDef,mokou,���g_��1,0,0
����Ȃ��Ƃ����\n�ł��Ȃ��񂾂�H\n���Ⴀ���������ɂ������I\,a15x3,0,0
,ClearBalloon,mokou








,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,nitori,-1280,&
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
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,mokou,���g_�f1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�ɂƂ�t�F�C�X�\���J�n

,SetFocus,mokou
���̃{�[���͈Ⴄ��\n�������ɉ����Ǎ��\n�{�[�������锤����\,a15x3,0,0

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
,ImageDef,nitori,�ɂƂ�_��1,0,0
,ImageDef,mokou,���g_��1,0,0

,th145_Show,nitori,-1280	,&,#�ɂƂ�t�F�C�X�\���J�n
,th145_Show,mokou,-1280	,#�ɂƂ�t�F�C�X�\���J�n


,SetFocus,nitori		,
����H\n�M�����{�[�������Ă񂶂��\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
����̓z��݂����ɓs�s�`����\n�g���ĂȂ��悤�Ɍ���������\,a15x3,0,0
,ClearBalloon,nitori

,SetFocus,mokou		,
�����s�s�`�����Č����Ă�\n�悭�����\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
�m���ɂ݂�Ȋ�Ȃ�������\n�g�ɕt���Ă���悤�����c�c\n���ɂ͖�������\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,mokou		,
���O�͍̂�蕨�̉��b���ȁH\n����ł��{�[���͎�ɓ���̂�\,a15x3,0,0
,ClearBalloon,mokou

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
�Ӂ[��\,a05x2,0,0
,ClearBalloon,nitori

,SetFocus,nitori		,
,ImageDef,nitori,�ɂƂ�_��1,0,0
���܂Ŕ����Ă��ĉ�������\n������x�{�[���̎��𐸍�����\n�K�v������̂����m��Ȃ�\,a15x3,0,0
,ClearBalloon,nitori


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
