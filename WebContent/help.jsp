<%@ include file="/inc/main_header.jsp"%>
<%@ include file="/inc/session.jsp"%>
<%@ include file="/inc/header.jsp"%>
<style>
#tt1 {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    color:  #191a1b;
}

#tt1 td, #tt1 th {
    border: 1px solid #ddd;
    padding: 8px;
}


#tt1 th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color:grey;
    color: white;
}
#tt1 td{
text-align: center;
}
</style>
<div id="wrap">
	<div id="contents_wrap">
			<div class="contents">
				<div class="sub_left">
				<ul class="l_tabs">
					<li id="ht1"><a href="#l-tab1">베팅 가이드</a></li>
					<li id="ht5"><a href="#l-tab5">베팅 규정</a></li>
					<li id="ht2"><a href="#l-tab2">게임 가이드</a></li>
					<li id="ht3"><a href="#l-tab3">자주 묻는 질문</a></li>
					<li id="ht4"><a href="#l-tab4">이용약관</a></li>
				</ul>
			</div>	
				<div class="sub_right">
					<div id="l-tab1" class="left_tab_con">
					<ul class="smk_accordion">
						<li>
							<div class="acc_head br1"><h3>스포츠 베팅 타입의 이해</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p style="font-weight: bold;">■ 승무패 1×2</p>
									<br>
									<p>1은 홈팀승 , X는 무승부, 2는 어웨이팀승으로 한다.승무패에 관한 경기 결과를 예측하여 베팅 , 적중시 해당 배당률로 당첨금 지급</p>
									<br><br>
									<p style="font-weight: bold;">■ 오버언더 – U/N (OVER/UNER)</p>
									<br>
									<p>A팀 vs B팀 경기 , 오버언더 기준점 2.5  (골, 코너킥, 옐로우 카드등 다양함)</p>
									<p> 경기 종료시 양팀합산 3 이상시 오버 ▲</p>
									<p>경기 종료시 양팀합산  2 이하시 언더 ▼</p>
									<br><br>
									<p style="font-weight: bold;">■ 더블찬스 – DOUBLE CHANCE</p>
									<br>
									<p>A팀 vs B팀 경기</p>
									<table style=" width: 50%;" >
										<tr>
											<td>A , X</td>
											<td>1.5</td>
											<td>B , X</td>
											<td>1.4</td>
											<td>A , B</td>
											<td>1.2</td>
										</tr>
									</table>
									<br>
									<p>위와같은 경기가 있을 경우 아래와 같은 배팅을 할수 있습니다</p>
									<p><font style="font-weight:bold">A , X</font> 베팅시 = A팀이 승리하거나 무승부일시 당첨</p>
									<p><font style="font-weight:bold">B , X</font> 베팅시= B팀이 승리하거나 무승부일시 당첨</p>
									<p><font style="font-weight:bold">A , B</font> 경기가 중립 장소에서 진행되는 경우 왼편에 나열된 팀을 홈 팀으로 간주합니다.</p>
									<p>경기가 중립 장소에서 진행되는 경우 왼편에 나열된 팀을 홈 팀으로 간주합니다.</p>
									<br><br>
									<p style="font-weight: bold;">■ 아시안 핸디캡 – ASIAN HANICAP</p>
									<br>
									<p>아시안 핸디캡은 일정팀에 사전에 정한 점수를 미리 지급함 으로써 승패에 베팅을 하는 게임입니다</p>
									<p>게임의 룰은 아래와 같습니다</p>
									<p>+0.25의 점수를 가지고 시작하는 팀에 베팅을 하였을 </p>
									<p>경우 경기 결과가1:0 승리시 당첨 0:0 무승부시 절반 승리로 배팅금+당첨금의 50% 을 수령합니다.</p>
									<p>-0.25의 점수를 가지고 시작하는 팀에 베팅을 하였을 </p>
									<p>경우 경기 결과가 1:0 승리시 당첨, 0:0 무승부시 절반 패배로 배팅금의 절반을 수령합니다.</p>
									<p>+0.75의 점수를 가지고 시작하는 팀에 배팅을 하였을 </p>
									<p>경우 경기 결과가 0:1 패배시 절반 패배로 배팅금의 50% 수령합니다.</p>
									<p>-0.75의 점수를 가지고 시작하는 팀에 배팅을 하였을</p>
									<p>경우 경기 결과가 1:0 승리시 절반 승리로 배팅금+당첨금의 50%을 수령합니다.</p>
									<p>자세한 기준점에 대한 베팅 예시 사항은 아래의 표를 참고 하시기 바랍니다.</p>
									<br><br>
									<table id="tt1">
									    <tr>
									        <th style="text-align: center">핸디캡 기준점</th>
									        <th style="text-align: center">팀 결과</th>
									        <th style="text-align: center">베팅 결과</th>
									    </tr>
									    <tr>
									        <td rowspan="3">0</td>
									        <td>승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>1배처리</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td rowspan="3">– 0.25(0--0.5)</td>
									        <td>승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>절반 패배 (배팅금의 50%)</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td rowspan="3">– 0.50(-0.25--0.75)</td>
									        <td >승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									</table>
									<br>
									<table id="tt1">
									    <tr>
									        <th style="text-align: center">핸디캡</th>
									        <th style="text-align: center">팀 결과</th>
									        <th style="text-align: center">베팅 결과</th>
									    </tr>
									    <tr>
									        <td rowspan="3">0</td>
									        <td>승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>1배처리</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td rowspan="3">– 0.25(0--0.5)</td>
									        <td>승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>절반의 승리 (배팅+당첨금의 50%)</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td rowspan="3">– 0.50(-0.25--0.75)</td>
									        <td>승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									</table>
									<br>
									<table id="tt1">
									    <tr>
									        <th rowspan="4" style="background-color: grey; text-align: center">-1.00</th>
									        <th style="text-align: center">2점차에 의해 승리</th>
									        <th>승리</th>
									    </tr>
									    <tr>
									        <td>1점차에 의해 승리</td>
									        <td>1배처리</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									         <th rowspan="4" style="background-color: #191a1b; text-align: center">-1.25</th>
									        <td>2점차에 의해 승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>1점차에 의해 승리</td>
									        <td>절반 패배 (배팅금의 50%)</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									    <tr>
									         <th rowspan="4" style="background-color: #191a1b; text-align: center">– 1.50</th>
									        <td>2점차에 의해 승리</td>
									        <td>승리</td>
									    </tr>
									    <tr>
									        <td>1점차에 의해 승리</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td>무승부</td>
									        <td>패</td>
									    </tr>
									    <tr>
									        <td>패</td>
									        <td>패</td>
									    </tr>
									</table>
								</div>
							</div>
						</li>

					</ul>
					</div>
					<div id="l-tab2" class="left_tab_con">
						<ul class="smk_accordion">
							<li>
								<div class="acc_head"><h3>Baccarat (바카라)</h3></div>
								<div class="acc_content">
									<div class="acc_content_in_2">
										<p>가장 드라마틱한 테이블 게임</p>
										<p style="font-weight: bold;">고객은 플레이어(Player)와 뱅커(Banker) 중 어느 핸드가 이길지 예상하여 베팅을 합니다. </p>
										<p style="font-weight: bold;">비길 것을 예상하여 타이(Tie)에 함께 베팅하기도 합니다.</p>
										<br><br>
										<p>베팅은 카지노가 정한 리미트(Limit, 베팅 가능 최저 금액과 최고 금액, 게임 옵션 참고) 범위 내에서 하시면 됩니다.</p>
										<p>딜러가 드로잉 룰에 따라 플레이어와 뱅커에 카드를 드로잉하여 플레이어, 뱅커 중 9에 가까운 쪽이 이깁니다.</p>
										<p>플레이어, 뱅커의 각 2장 혹은 3장의 합으로 게임 승패가 결정됩니다.</p>
										<p>TIP 많은 분들이 플레이어는 고객, 뱅커는 카지노의 영역으로 오해하는데, 고객이 플레이어와 뱅커 중 이기는 쪽을</p>
										<p>예상하여 베팅을 하는 게임입니다. 고객은 플레이어와 뱅커 어느 쪽이든 베팅 할 수 있습니다.</p>
										<br><br>
										<p>이긴 쪽에 베팅된 금액은 고객에게 지급하고, 진 쪽에 베팅된 금액은 수거합니다.</p>
										<p>플레이어가 이길 경우 베팅한 금액만큼(100%) 페이하고, 뱅커가 이길 경우 5%의 커미션을 공제(95%)하고 지급합니다.</p>
										<br><br>
										<p>비길 경우 Tie에 베팅한 고객에게 베팅액의 8배를 드리며, 이때 원금은 수거하지 않습니다.</p>
										<br><br>
										<p style="font-weight: bold;">카드의 가치</p>
										<p>10과 그림카드(KING, QUEEN, JACK)는 모두 0으로 계산됩니다. 그 외의 카드는 표시된 숫자로 계산됩니다. A 는 1입니다.</p>
										<br><br>
										<p style="font-weight: bold;">카드의 순위</p>
										<p style="font-weight: bold;">NATURAL</p>
										<p>가장 높은 순위는 내추럴(Natural)입니다. 플레이어나 뱅커 사이드 중 어느 쪽이든 두 장의 합이 9, 8이면 게임은 종료됩니다.(4장으로 게임 종료)</p>
										<p style="font-weight: bold;">STAND</p>
										<p>플레이어 두 장의 합이 7, 6일 때, 뱅커 두 장의 합이 7일 때 스탠드(Stand)인데, 어느 쪽이든 스탠드일 경우 더 이상 카드를 받지 않고 스탠드합니다.</p>
										<p>양쪽이 전부 스탠드일 때 추가 카드 드로잉이 없이 게임이 종료됩니다.(4장 혹은 5장으로 게임 종료)</p>
										<p style="font-weight: bold;">NOTHING</p>
										<p>플레이어, 뱅커 모두 스탠드보다 낮을 경우 플레이어가 먼저 한 장을 받는데, 이때 나온 플레이어 카드의 가치에 따라 게임이 종료되기도 하고, 뱅커 카드를 한 장 더 받고 종료되기도 합니다.</p>
										<p>(5장 혹은 6장으로 종료)</p>
										<br><br>
										<p style="font-weight: bold;">페어 벳(Pair bet)</p>
										<p>플레이어 혹은 뱅커 사이드에 처음 드로잉 된 2장의 카드(Initial two cards)가 같은 가치를 지닌 경우 (One Pair), 페어벳 베팅을 한 고객에게 11배를 지급합니다.</p>
										<p>페어벳 베팅을 했는데 페어가 없는 경우에는 페어벳 베팅금을 수거하며, 페어벳은 플레이어 페어벳, 뱅커 페어벳으로 각각 나뉘어져 있어 원하시는 쪽에 베팅하실 수 있습니다.</p>
										<p>게임에 참가 중인 다른 고객이 베팅하지 않은 금액만큼 추가 베팅이 가능합니다.</p>
										<p>10 – J, J – K, Q – K 등과 같이 바카라에서의 가치는 0으로 같지만 Pair가 아니기 때문에 인정되지 않습니다.</p>
										<p>오리지날 베팅 없이 타이나 페어벳 만으로 게임 참여가 가능합니다. 이 때, 카드는 오픈으로 뽑습니다.</p>
									</div>
								</div>
							</li>
							<li>
								<div class="acc_head"><h3>BlackJack (블랙잭)</h3></div>
								<div class="acc_content">
									<div class="acc_content_in_2">
										<p>가장 인기가 많은 카지노 게임</p>
										<p>게임 개요</p>
										<p>블랙잭은 고객들이 가장 선호하는 카지노 게임의 하나로, </p>
										<p>21 또는 21에 가까운 숫자를 만들어 딜러 보다 높으면 이기는 게임입니다.</p>
										<p>고객에게 드로잉 된 최초 카드 2장(Initial two cards)의 높낮이에 따라 추가 카드를 받거나(Hit) </p>
										<p>멈출 수 있으며 (Stay), 딜러보다 불리하다고 판단되면 베팅 금액의 절반을 포기하는 </p>
										<p>조건으로 게임을 종료할 수 있습니다.</p>
										<p>(이때 Hit, Stay, Surrender는 반드시 정해진 핸드 시그널로 표시해야 합니다.)</p>
										<p>딜러는 이니셜 투 카드가 16 이하일 때, 17이상이 될 때까지 카드를 받아야 하며, 딜러와 </p>
										<p>플레이어 모두 21을 초과하면 지게</p>
										<p>됩니다. 이를 버스트(Bust)라고 합니다.</p>
										<p>플레이어가 버스트하게 되면 해당 게임은 종료되며, 딜러가 버스트하게 되는 경우에는 </p>
										<p>버스트하지 않은 플레이어가 이기게 됩니다. 플레이어들의 카드와 비교하여, 딜러보다 높은</p>
										<p>카드의 베팅금액은 지급하고, 딜러보다 낮은 카드의 베팅 금액은 수거하며, 딜러와 </p>
										<p>플레이어의 카드가 같을 경우 비기게 되어 지급, 수거 없이 게임을 종료시킵니다.</p>
										<p>이니셜 투 카드 (처음 2장의 카드)의 조합이『A + any 10(10,J,Q,K)』으로, 합이 '21' 인 </p>
										<p>경우가 가장 높은 카드이며, 이를 블랙잭이라 합니다. 플레이어가 블랙잭일 경우 1.5배를</p>
										<p>지급하며, 딜러와 플레이어 모두 블랙잭일 경우 비기게 되며, 딜러가 블랙잭일 경우에는 </p>
										<p>딜러가 이기게 됩니다.</p>
										<br><br>
										<p style="font-weight: bold;">카드의 가치</p>
										<p>“ACE”는 1 또는 11로 계산됩니다. </p>
										<p>그림카드 (KING, QUEEN, JACK)는 모두 10으로 계산되며, 그 외의 카드는 표시된 숫자로 계산됩니다</p>
										<br>
										<p>이니셜 투카드로 Ace와 10 카드를 받을 경우 이를 블랙잭이라 하며, 이니셜 투카드에 Ace가 있어 11로 카운팅이 가능한 경우 소프트 핸드라고 합니다.</p>
										<br>
										<p>카드를 더 받고자 할 때, Hit버튼을 클릭하시면 됩니다.</p>
										<p>추가로 카드를 받지 않고자 할 때, Stay버튼을 클릭하시면 됩니다.</p>
									</div>
								</div>
							</li>
							<li>
								<div class="acc_head"><h3>Roulette (룰렛)목</h3></div>
								<div class="acc_content">
									<div class="acc_content_in_2">
										<p>누구나 쉽게 할 수 있는 카지노 게임</p>
										<p>게임 개요</p>
										<p style="font-weight: bolder;">룰렛은 특별한 규칙이 없다고 할 수 있는 게임으로 초보자라도 쉽게 즐길 수 있기 때문에 가장 대중적인카지노 게임 중 하나입니다. </p>
										<p style="font-weight: bolder;">딜러가 회전시킨 볼이 회전하고 있는 휠(회전판) 상의 어떤 번호(번호/색깔 등)에 낙착할 것인가를 알아맞추는 게임입니다.</p>
										<p>휠 상의 번호들은 테이블 레이아웃에 표시가 되어 있으며, 이곳에 원하는 곳에 베팅하면 됩니다.</p>
										<p>맞춘 칩스에 대해서는 각각의 배당률에 따라 배당을 받게 되며, 맞추지 못한 칩스는 수거되어 잃게 됩니다.</p>
										<br>
										<p style="font-weight: bold;">룰렛 베팅의 종류</p>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline"> 컬럼 벳/투엘브넘버 벳 (Column Bet / Twelve Number Bet)칩스를 레이아웃 하단에 위치한  </p>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">세 개의 공간 중에 선택하여 놓습니다.</p>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">이 베팅은 해당 공간의 상위 수직선상의 12개 번호를 가리킵니다. (1:2)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">다즌벳 (Dozen Bet)칩스를 레이아웃의 『1st 12』, 『2st 12』, 『3st 12』라고 표시된 지점에 놓습니다.</p>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">『1st 12』는 1부터 12까지의 숫자를 가르키며, 『2st 12』는 13부터 24, 『3st 12』는 25부터 36까지의 숫자를 가르킵니다. (1:2)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">다즌벳 (Dozen Bet)칩스를 레이아웃의 『1st 12』, 『2st 12』, 『3st 12』라고 표시된 지점에 놓습니다.</p>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">이븐/아드 넘버 벳 (Even/Odd Number Bet)0과 00를 제외한 레이아웃 상의 모든 번호는 짝수 (Even)와 홀수 (Odd)로 구분됩니다. (1:1)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">칼라 벳 (Color Bet)0과 00를 제외한 레이아웃 상의 모든 번호는 적색 (Red)와 흑색 (Black)으로 구분됩니다. (1:1)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">스트레이트 벳 (Straight Bet) 싱글 넘버 벳 (Single Number Bet)한 번호를 겨냥하여 베팅합니다. (1:35)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">스플릿 벳 (Split Bet) 투넘버 벳 (Two Number Bet)두 번호를 겨냥하여 칩스를 두 번호 사이의 선 위에 베팅합니다. (1:17)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">스트릿 벳 (Street Bet) 쓰리 넘버 벳 (Three Number Bet)세 번호를 겨냥하여 칩스를 레이아웃을 가로지르는 3가지 번호가 있는 선 위에 베팅합니다. (1:11)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">스퀘어 벳 (Square Bet) 코너벳 (Corner Bet) 포넘버 벳(Four Number Bet)네 번호를 겨냥하여 네 가지 번호가 교차하는 중간선 위에 베팅합니다. (1:8)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">파이브넘버 벳 (Five Number Bet)칩스를 1,2,3,0,00을 분리시키는 모서리 지점에 베팅합니다. (1:6)</p>
										<br><br>
										<p style="padding-left: 10px; font-weight: bold; text-decoration: underline">라인 벳 (Line Bet) 식스 넘버 벳 (Six Number Bet)칩스를 두 개의 Street 벳이 교차하는 선 위에 놓습니다. (1:5)</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div id="l-tab3" class="left_tab_con">
						<ul class="smk_accordion">
								<li>
									<div class="acc_head"><h3>회원 가입 관련</h3></div>
									<div class="acc_content">
										<div class="acc_content_in_2">
											<p style="font-weight:bold">Q 아이벳 회원 가입은 어떻게 하나요?</p>
											<br>
											<p>사이트 우측 상단에 “회원가입” 클릭후 필요한 정보를 작성 후 가입하시면 됩니다.
											회원 가입은 해당 국가의 법적나이 19세 이상만 가능하며 유효한 휴대폰 번호를 입력하셔야 합니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 사이트에 가입하면 어떤 의무사항이 있나요?</p>
											<br>
											<p>가입 후 30일 이내 사이트 이용내역이 없는경우, 자동으로 회원 탈퇴가 이루어지게 됩니다.</p>
											<p style="color:#ffa800;"> 가입하는 것은 사이트의 이용에 대한 약관에 동의 하는 것입니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 어떤 경우에 계정이 정지 되나요?</p>
											<br>
											<p> 약관에 어긋나는 베팅을 하였을 경우,불법적인 방법으로 입금한 경우
												채팅, 전화 그리고 이메일로 서포트 연락 시 부적절 한 언어를 사용한 경우
												통보없이 계정이 정지될 수 있습니다. </p>
											<br><br>
											<p style="font-weight:bold">Q 중복가입은 가능한가요?</p>
											<br>
											<p><font style="color:#ffa800;">가입은 1인1계정 입니다. 만약 중복 계정이 발견되면 통보 없이 계정삭제</font>가 됩니다</p>
											<br><br>
											<p style="font-weight:bold">Q 본인 개인정보 변경은 어떻게 하나요?</p>
											<br>
											<p>상단 ‘내 정보’ 클릭 후  변경 가능하며, 휴대폰번호 혹은 계좌번호 변경 시
											고객센터로 통보해주셔야만 계좌변경 및 이벤트에 대한 소식을 받아보실 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 비밀번호를 잊어 버렸을 때 어떻게 해야 하나요?</p>
											<br>
											<p> 비밀번호를 잃어버렸을 경우 사이트내 휴대폰 번호 인증 후 변경가능합니다 . 이외에 방법은 없습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 로그인이 안되요?</p>
											<br>
											<p>로그인이 안될 때는 익스플로러 또는 크롬 쿠키 삭제 및 방문내역을 삭제 후 로그인하시면 됩니다.</p>
										</div>
									</div>
								</li>
								<li>
									<div class="acc_head"><h3>베팅 관련</h3></div>
									<div class="acc_content">
										<div class="acc_content_in_2">
											<p style="font-weight:bold">Q 스포츠 베팅 시 최대 베팅 한도 및 최대 베팅 가능한 폴더 수는 어떻게 되나요?</p>
											<br>
											<p><font style="color:#ffa800;">해외 배팅업체의 경우 각 리그 , 해당팀, 배당률에 따라 최대 베팅한도는 상이</font>합니다.</p>
											<p>이는 최대 베팅 가능한 폴더 수 및 베팅 상한가 도 똑같이 적용됩니다.</p>
											<p>그로 인해 베팅 한도 및 베팅 상한가는 게임마다 다르게 적용되고 있습니다. </p>
											<p><font style="color:#ffa800;">베팅하시려는 경기의 본인 최대 베팅 한도를 알고 싶으시면</font></p>
											<p><font style="color:#ffa800;">로그인 후 베팅하실 경기 배당에 마우스를 올리거나 각 경기 선택 후 배팅슬립 하단 ‘맥스’ </font></p>
											<p><font style="color:#ffa800;">버튼을 누르시면 확인 가능</font>합니다.</p>
											<p>로그인 전 에는 ‘맥스’ 버튼이 활성화 되지 않습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 베팅 슬립에 나오는 베팅종류는 무엇인가요?</p>
											<br>
											<p>아이벳 에서는 단폴 베팅, 조합 베팅 이렇게 2종류의 베팅 종류를 제공합니다. </p>
											<br><br>
											<p style="font-weight:bold; color:#00afed;">1-단폴 베팅</p>
											<br>
											<p>베팅 슬립에 담긴 경기들을 개별적으로 베팅 금액을 설정할 수 있으며,</p>
											<p>베팅 금액이 설정된 경기들은 한 번의 클릭으로 모두 단 폴더 베팅할 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold; color:#00afed;">2-조합베팅</p>
											<br>
											<p>베팅 슬립에 담긴 여러 개의 경기들을 조합 하여 베팅할 수 있습니다</p>
											<p>다만 베팅 카트에 담긴 내역 중 조합 베팅이 가능하지 않는 내역은</p>
											<p>카트에 경고 표시되며 대상 경기 중 하나를 삭제 하시면 정상적으로</p>
											<p>베팅 처리가 완료 됩니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 라이브 베팅 시 베팅 완료가 되지 않거나 간섭이 일어나는 이유는 무엇인가요?</p>
											<br>
											<p>아래의 이유들로 인해서 이와 같은 상황이 발생될 수 있습니다.</p>
												<p>- 인터넷 서비스 회사의 문제</p>
												<p>- 갑자기 너무 많은 베팅이 몰렸을 때</p>
												<p>- 해당 경기가 너무 빠르게 진행되고 있고 배당 조정이 급격히 일어날때</p>
												<p>- 기술적인 문제(소프트웨어 문제, 정전 등)</p>
												<p>- 자연재해</p>
											<br><br>
											<p style="font-weight:bold">Q 베팅한 경기의 배당률이 시간이 지나도 멈춰 있는 경우</p>
											<br>
											<p>배당률이 시간이 지나도 멈추어 있는 경우는 해당 경기의 생방송이 멈추거나, 소프트웨어 문제</p>
											<p>그리고 정전 등의 이유로 일어날 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 베팅한 경기의 배당률이 시간이 지나도 멈춰 있는 경우</p>
											<br>
											<p>배당률이 시간이 지나도 멈추어 있는 경우는 해당 경기의 생방송이 멈추거나, 소프트웨어 문제</p>
											<p>그리고 정전 등의 이유로 일어날 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 라이브 베팅에 있는 경기 시간과 스코어 등이 정확하지 않은 경우</p>
											<br>
											<p>의도되지 않은 기술적 이유로 드물게 일어나는 경우가 있습니다. 라이브 베팅에서 제공하는
											경기시간은 지표일 뿐입니다. 실제 확인 가능한 경기만 베팅에 이용하시기 바랍니다.
											당사는 위에 보여지는 정보 즉,<font style="color:#ffa800;"> 스코어 혹은 경기시간의 정확성 및  현재성에 대하여 책임이
											없음을 알려 드립니다.
											만약 베팅시점에 보여지는 정보가 부정확 했더라도 실제 경기의 결과와
											배당이 적용됨을  알려드립니다.</font></p>
											<br><br>
											<p style="font-weight:bold">Q 나의 베팅한도가 줄어 들었을때</p>
											<br>
											<p>어느 북메이커든지 플레이어의 베팅한도를 줄일 수 있는 권리를 가지고 있으며 이 사항에
											대하여 설명할 의무가 없습니다.</p>
											<p>그리고 북메이커는 합당한 이유가 있을 시 플레이어의 계정을 정지 시킬 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 라이브 페이지에서 경기도중 베팅한 경기가 사라졌습니다. 베팅은 어떻게 처리되나요?</p>
											<br>
											<p>해당 경기의 공식정보가 업데이트 되지 않아 중단된 경우입니다. 라이브 도중 경기가
											사라져도 완료된 베팅은 공식결과가 나오는대로 정상 처리됩니다. 해당 경기의 공식정보가 없을</p>
											<p>사라져도 완료된 베팅은 공식결과가 나오는대로 정상 처리됩니다. 해당 경기의 공식정보가 없을</p>
											<br><br>
											<p style="font-weight:bold">Q 축구 경기 중 만약 한 선수가 2장의 옐로우 카드를 받을 시 베팅 결과 처리</p>
											<br>
											<p>두 번째 옐로우 카드를 받으면 레드카드를 받는 것과 같이 선수는 퇴장을 당하므로 두 번째
											옐로우 카드는 레드카드로 간주합니다. 그러므로 옐로우 카드 1장과 레드카드 1장을 받은
											것으로 베팅결과에 적용됩니다</p>
											<br><br>
											<p style="font-weight:bold">Q 테니스 경기 중 만약 한 선수가 기권할 시 베팅 결과 처리</p>
											<br>
											<p>만약 한 선수가 부상 등의 이유로 기권할 시 베팅은 적특 처리됩니다.</p>
											<br><br>	
											<p style="font-weight:bold">Q 테니스 경기 중 만약 한 선수가 기권할 시 베팅 결과 처리</p>
											<br>
											<p>경기 시작 시간이 표기와 다르게 몇 시간 빠르거나 늦게 시작되어도 실제 경기 시작전에 베팅이 </p>
											<p>완료되면 정상 처리됨을 알려 드립니다.</p>
											<p><font style="color: #ffa800;">그리고 베팅 이후의 취소는 불가합니다.</font></p>									
											<br><br>
											<p style="font-weight:bold">Q 베팅 취소는 가능한가요?</p>
											<br>
											<p><font style="color: #ffa800;">베팅 취소는 ‘하루3회’ 가능 </font>합니다. 진행중인 경기가 포함되어 있는 다폴더 베팅은 취소가 불가능하며, 베팅후 10분 이내에만 취소가 가능합니다.</p>									
											<br><br>									
										</div>
									</div>
								</li>
								<li>
									<div class="acc_head"><h3>입금,출금 관련</h3></div>
									<div class="acc_content">
										<div class="acc_content_in_2">
											<p style="color:maroon;">※ 아이벳 "원화 계좌이체 " 방식의 입출금은 "아이벳" 의 엄격한 자금 보호 아래 진행하며  마스터, 에이젼시의 원화 입출금은 불허합니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 입금계좌 확인은 어떻게 하나요?</p>
											<br>
											<p>계좌확인은 입금 신청시 비밀번호를 입력하면 자동 안내됩니다.</p>
											<p style="color:#ffa800;">계좌는 수시로 변경되기 때문에 입금 전에는 반드시 안내되는 계좌로 입금하셔야 합니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 수표로 입금 가능한가요?</p>
											<br>
											<p style="color:#ffa800;">수표입금은 절대 불가합니다. 만약 수표입금 시 통보 없이 계정삭제가 될 수 있습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 실수로 구계좌로 입금했어요?</p>
											<br>
											<p>구 계좌로 입금 시에는 저희 쪽에서 확인이 불가능 합니다. 그로 인해 충전도 불가능합니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 입금 출금은 어떻게 하나요?</p>
											<br>
											<p style="color:#ffa800;">입금 시에는 개인정보란에 등록된 본인 이름과 입금자명이 동일해야 합니다. 타인명의로 입금 시 충전이 불가하며 강퇴처리될 수도 있습니다.</p>
											<p style="color:#ffa800;">출금은 슈퍼마스터에 등록된 본인 명의의 계좌로만 출금이 됩니다. 하루 최대 3회 출금이 가능합니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 입금 시 입금하지 않고 “충전확인”을 클릭하면 어떻게 되나요?</p>
											<br>
											<p style="color:#ffa800;">아이벳 사용약관에 의하여, 허위로 “충전확인”를 클릭하시면 계정이 즉시 정지 되오니,반드시 입금을 완료하시고 “충전확인”를 클릭해주세요.</p>
											<br><br>
											<p style="font-weight:bold">Q 입금 후 베팅을 하지 않고 바로 출금이 가능한가요?</p>
											<br>
											<p>불가능 합니다. 불법자금 세탁방지 및 입금 시 수수료등이 발생하기 때문에 입금 후 전액 베팅을 하지 않으시면 출금이 되지 않습니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 입금 출금은 얼마까지 가능한가요?</p>
											<br>
											<p>입금 출금액에 대한 한도는 없습니다.<font style="color:#ffa800;">다만 계좌 이체 방식의 일일 출금의 경우 평소 회원과 당사와의 입출금 거래 금액을 기준으로</font></p>
											<p><font style="color:#ffa800;">이에 크게 벗어나는 출금 금액일 경우 그 금액을 나누어 송금 시킬 수 있습니다. </font>이는 한국 자본거래법 (은행 모니터링 후 금감원 자동통보)</p>
											<p>기준에 따른 사항이며 <font style="text-decoration: underline;">이런 사항이 발생할경우 당사 자금팀은 지체없이 회원에게 보고해야할 의무가 있습니다.</font></p>
											<p><font style="text-decoration: underline;">※다른 기타 결제수단을 원할 경우 ( 비트코인 및 유로 , 달러화 결제 ) 고객센터를 통해 문의바랍니다.</font></p>
											<br><br>
											<p style="font-weight:bold">Q 출금이 왜 안되나요?</p>
											<br>
											<p>충전 후 돈이 들어오지 않은 경우는 새로 고침 하시면 회원님의 보유머니가 정상적으로 보입니다.</p>
											<br><br>
											<p style="font-weight:bold">Q 계좌 번호를 변경 하고 싶은데 가능 한가요?</p>
											<br>
											<p>귀하의 잔액이 0 일 때 메시지로 문의 하시면 변경 가능 합니다.</p>
											<p>잔액이 남아있는 경우 기존 등록된 계좌로 잔액을 모두 송금합니다.</p>
											<p>단, 거래 내역이 없는 계좌는 변경이 불가능 합니다.</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
					<div id="l-tab4" class="left_tab_con">
						<ul class="smk_accordion">
						<li>
							<div class="acc_head"><h3>【 이용약관 】</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1. 본 약관을 읽고 회원가입을 완료하실 경우 </p>
									<p>회원님은 본 약관에 이미 동의 하신 것으로 간주되며, 본 약관을 읽지 않고 회원 가입 후 생기는 어떤 문제도 본사는 책임을 질 수 없습니다.</p>
									<br>
									<p>2. 회사는 이용약관을 언제든지 변경하거나 추가 할 수 있습니다.</p>
									<p>이용약관의 변경에 대한 내용은 사이트 내에 공지와 동시에 적용되며, 본 문서에 추가 됩니다. </p>
									<br>
									<p>3.각 회원님들이 위치하고 계신 국가별 법적인 제한으로 어떤 국가들에서는 사이트들에 대한 접속이 </p>
									<p>차단될 수도 있습니다.</p>
									<p>그러나 본사는 원칙적으로 접속을 제한하지 않으며 이에 대한 책임을 지거나 해결 할 수 없습니다. </p>
									<p>단 악의적인 사용자로 판단되었거나, 사이트의 원활한 서비스 제공을 위해 일시적으로 특정 지역에 </p>
									<p>위치한 회원이나 특정회원의 접속을 제한할 수 있는 권리가 있습니다.</p>
									<br>
									<p>4. 회원님들이 회원가입을 하시면 가입시의 절차에 따라 자동으로 회원 가입이 승인 됩니다.</p>
									<p>특별히 회원 가입 승인에 제한을 두지 않으나, 악의적인 사용자와 사이트의 원활한 서비스 제공을 위해 승인을 거부하거나 취소할 수 있습니다.</p>
									<p>회사는 회원님들이 가입시 기재한 어떠한 정보도 제 3자에게 제공하거나 노출하지 않으며, 가능한 모든 방법을 동원하여 회원님들의 정보 보호에 만전을 다하고 있습니다.</p>
									<p>그럼에도 불구하고 불가항력적인 이유로 정보가 노출될 가능성도 있음을 참고하십시요.</p>
									<br>
									<p>5. 회원가입에 연령은 성인 즉 만 20세를 기준으로 합니다. </p>
									<p>회사는 20세 미만의 고객이라고 판단되면 언제든지 해당회원의 접근을 제한 하거나 가입 승인을 </p>
									<p>취소하거나, 심지어 배팅을 하였다 하더라도 이에 대한 금액 지불을 거부할 수 있습니다.</p>
									<br>
									<p>6. 회원은 자신의 회원아이디와 비밀번호의 비밀엄수에 대한 책임을 가지고 있습니다. 아이디와 비밀번호 노출로 인하여 제 3자가 배팅하여 생기는 피해에 대해서 이에 따른 어떠한 책임도 회사는 지지 않습니다. </p>
									<br>
									<p>7. 회원은 언제든지 자신의 배팅머니를 사용하거나 환전신청하여 인출 할 수 있습니다.</p>
									<br>
									<p>8. 만약 회원의 배팅머니와 관련된 배당금의 합계나 충전, 또는 환전에 따른 여러 계산에서 잘못된 점이 있다면 이에 대한 신고와 재확인 요구는 회원에게 있습니다. </p>
									<p>회원이 신고하거나 재확인 요구를 하지 않아서 발생한 직접 또는 간접적인 모든 배팅이나 충전, 환전 등 배팅 머니와 관련된 일련의 모든 행위들은 모두 취소 처리 될 것입니다.</p>
									<br>
									<p>9. 회사는 모든 회원님들께 친절하고 편리한 서비스를 제공하는것을 목표로 삼고 있지만, 부정 중복가입, 해킹시도, 근거 없는 비방글 유포 등 특정한 계정에 대해서 </p>
									<p>회원자격을 박탈 할 수 있으며 이러한 경우에 해당 아이디의 모든 배팅머니는 몰수 되고 사이트 내에서의 모든 자격을 잃게 될 것입니다.</p>
									<p>그러나 회원 스스로 회원 자격을 버릴 경우에는 자신의 보유 머니를 언제든지 신청하여 인출 할 수 있습니다.</p>
									<br>
									<p>10. 회사는 모든 서비스를 모든 회원님들께 친절하고 편리하며, 공정하고 투명하게 운영하도록 최선을 </p>
									<p>다합니다.</p>
									<p>회원은 회사의 모든 서비스를 이용함에 있어 규칙에 따라 정해진 범위 안에서 이용해야만 합니다.</p>
									<p>회사와 회원은 서로 신뢰하고 동반자로서의 관계를 유지하기 위해 노력해야 합니다.</p>
									<br>
									<p>11. 회사는 언제나 정확한 정보를 제공하기 위해 최선의 노력을 다하고 있으나 예기치 않은 오류나 대응할 수 없는 불가 항력적인 사항의 경우 이에 따른 결과에 대해 수정할 권리를 가지고 있습니다.</p>
									<br>
									<p>12. 회사는 배당의 잘못된 기재 및 공식적인 경기 변동사항 (경기전 감독사임, 예기치 못한 선수의 </p>
									<p>갑작스런 사고 등)으로 인한 경기 배당 수정 및 취소할 권리를 갖으며, 회원 또한 잘못된 정보를 확인하였을 경우 회원의 의무로서 즉시 회사에 알려야합니다.</p>
									<p>배당 경기 시간등 잘못된 정보를 알고 있음에도 이를 회사에 알리지 않고 배팅할 경우, 또한 오히려 이를 악용하여 큰 차익을 내려는 의도가 보일 경우 회사는 그 회원에 대한 징계를 내릴 수 있습니다.</p>
									<br>
									<p>13. 회사는 어떤한 경우에도 불법적인 시도와 타협하거나 거래하지 않으며, 이를 막기 위해 가능한 모든 방법을 동원하고 있습니다.</p>
									<p>회사는 불법적인 시도에 대한 모든 일련의 행위는 모두 취소 처리 하고 지불하지 않을 권리가 있습니다.</p>
									<br>
									<p>14. 모든 회원은 한 아이피에서 한 계정만을 사용하여야 하며 부득이하게 같은 아이피에서 다른 회원과 함께 가입 및 이용을 해야할 경우 먼저 고객센터를 통하여 승인을 얻어야합니다.</p>
									<p>승인을 얻지 않고 중복가입할 경우 회사는 중복아이디 정지 탈퇴 삭제할 권리가 있으며 모든 금액을 </p>
									<p>환수할 권리도 있습니다.</p>
									<br>
									<p>15. 게시판은 본사 운영과 아무런 연관이 없으며 다만, 근거없이 게시판을 악용하여 상대방을 비방하거나 회사를 비방할 경우 예고 없이 회원의 아이디를 정지 탈퇴 삭제할 권리가 있습니다.</p>
									<br>
									<p>16. 머니 충전시 회원은 언제든지 발급된 계좌를 정확히 확인해야합니다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>【 일반규정 】</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>아이벳 스포츠북이 회원의 베팅을 승인할 때의 조건들을 세분화하여 요약한 것입니다.</p>
									<p>승인된 모든 베팅은 이 규정의 적용을 받습니다.</p>
									<p>당신이 베팅을 할 때 오류를 범할 경우 또는 우리 사이트와 시스템에서 오류가 발생될 경우 어떻게 베팅이 정산되는지에 대한 세부내역들도 이 규정에 명시되어 있습니다.</p>
									<p>이 규정과 특별한 베팅룰을 숙지하는 것은 여러분의 책무입니다.</p>
									<p>아이벳은 사전 통보 없이 항상 베팅 규정을 추가,삭제,변경할 권한을 갖습니다.</p>
									<br><br>
									<p>1.1 일반 사항</p>
									<br><br>
									<p>1.1.1<font style="color:#ffa800;">실수로 베팅완료를 클릭 하였다 하여도 약관의 따라 완료된 베팅은 취소처리가 불가능 하다.</font></p>
									<br><br>
									<p style="font-weight:bold">1.1.2 회사에 의해 제공된 모든 베팅 정보는 진실되고 명확해야 한다.</p>
									<p style="font-weight:bold">하지만 회사가 데이터, 시간, 장소, 경쟁상대, 배당, 결과, 통계 및 기타 베팅 정보들에</p>
									<p style="font-weight:bold">대해서 최선을 다해 종합적으로 정확성을 보장하는 노력을 기울였음에도 불구하고</p>
									<p style="font-weight:bold">오류 또는 누락 등이 발생할 경우 이에 대한 책임이 없다.</p>
									<p style="font-weight:bold">회사는 명확한 오류에 대해서는 수정을 해야 하며 또한 특정 스포츠 이벤트에 제공된</p>
									<p style="font-weight:bold">다른 베팅 유형으로 정의된 마켓들이 성실히 관리되도록 모든 타당한 조치를 취해야 한다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.3 두 팀간 또는 개인간 조직화된 스포츠 경기로 정의된 이벤트가 만약 예정 시간 전에</p>
									<p style="font-weight:bold">시작되었고 이 경우 베팅을 했을 경우 (특정 라이브 베팅은 제외됨) 베팅은 유효하다고</p>
									<p style="font-weight:bold">간주된다. 만약 마켓이 정확한 시간에 종료 또는 중단 되지 않았을 경우,</p>
									<p style="font-weight:bold">회사는 실제 시작시간(특정 라이브 베팅은 제외)이후에 이루어진 모든 베팅을</p>
									<p style="font-weight:bold">무효화할 권리를 갖는다.</p>
									<p style="font-weight:bold">따라서 우리 웹사이트상에서 경기의 일자와 시작 시간은 단순한 참조용일 뿐이다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.4 영어버전의 우선순위를 갖는다. 만약 어느 팀이 정해진(지정된) 상대 팀이 아닌</p>
									<p style="font-weight:bold">다른 팀과 경기를 할 경우, 회사의 재량으로 이 경기는 무효로 간주된다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.5 고객은 항상 경기 스코어와 경기관련 모든 정보에 대하여 베팅 전 반드시</p>
									<p style="font-weight:bold">이해하고 있어야 한다.</p>
									<p style="font-weight:bold">이해가 안되는 부분은 언제든 고객센터에 문의 하여 충분히 숙지하여야 한다</p>
									<br><br>
									<p style="font-weight:bold">1.1.6 회사는 규정을 변경할 사유가 발생될 경우 이에 대한 권리를 가진다.</p>
									<p style="font-weight:bold">이러한 규정 변경은 웹사이트에 등재됨과 동시에 구속력과 유효성을 갖는다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.7 고객은 현재 스코어, 시간경과 및 실시간 중계에 대하여 제 3자가 제공하는</p>
									<p style="font-weight:bold">기타 다른 데이터들이 시간지연 또는 오류를 발생시킬 수 있다는 점과 이 데이터를</p>
									<p style="font-weight:bold">기준으로 베팅이 된 것은 전적으로 고객들 자신의 ‘위험성’이라는 것을 인정해야 한다.</p>
									<p style="font-weight:bold">회사는 이러한 데이터의 정확성, 완성도 또는 타임라인(시각표)을 보장해 줄 수</p>
									<p style="font-weight:bold">없고 이와 관련된 고객들의 직간접 피해에 대해 책임이 없다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.8 라이브 거래에서 보여지는 마켓은 전체 경기를 말한다.</p>
									<p style="font-weight:bold">(예외: 축구경기에서 아시안 헨디켑은 현재 스코어에서 지정된 다음 마켓 이름까지 항상 거래된다)</p>
									<br><br>
									<p style="font-weight:bold">1.1.9 복수 베팅에서 하나의 이벤트 결과가 또 다른 이벤트 결과에 영향을 줄 경우</p>
									<p style="font-weight:bold">이를 인정하지 않으며 이러한 상황하에서 회사는 복수베팅을 싱글(Single)로서</p>
									<p style="font-weight:bold">결정할 권한이 있다. 복수 베팅에 승리할 경우 투자한 총 금액은 각각의</p>
									<p style="font-weight:bold">선택 분에 대하여 균일하게 나누어서 정산된다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.10 가격, 레이스, 경기 또는 이벤트의 조작의 증거가 있는 곳에서,</p>
									<p style="font-weight:bold">차후 조사결과가 나올 때까지 회사는 베팅을 무효화 하거나</p>
									<p style="font-weight:bold">이익금의 결제를 보류 할 권한이 있다.</p>
									<p style="font-weight:bold">만약 베팅을 하는 과정에서 금전상의 이익을 얻기 위해 고의적인 시도가 있다고</p>
									<p style="font-weight:bold">판단될 경우, 차후 조사 결과가 나올 때까지 회사는 이 베팅을 무효 처리하고</p>
									<p style="font-weight:bold">이익금 결제를 보류할 권한을 갖는다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.11 베팅이 마무리된 후 1주 또는 이벤트가 종료된 후 2주가 지나가면 클레임 또는</p>
									<p style="font-weight:bold">논쟁이 없는 것으로 간주된다. 우선적으로, 모든 클레임과 불만은 고객센터를</p>
									<p style="font-weight:bold">통해서 접수되어야 하고 접수된 클레임은 거래 팀으로 전달된다.</p>
									<p style="font-weight:bold">만약 거래 팀이 접수된 클레임을 해결할 수 없을 경우,</p>
									<p style="font-weight:bold">스포츠북 본사가 최종 결정을 하여 그 결과를 이메일로 고객에게 통지한다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.12 회사는 어떤 팀 또는 포지션에 가격을 제공하지 않을 권리가 있다.</p>
									<p style="font-weight:bold">이럴 경우N/O(오퍼 없음)로서 웹에 등재된다.</p>
									<p style="font-weight:bold">가격이 제시되지 않은 곳에 베팅[배당(1.00)]을 할 경우 무효가 된다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.13 회사 웹사이트를 사용할 때, 고객은 이 사이트에서 제공하는(라이브 TV 영상 포함)</p>
									<p style="font-weight:bold">현재 스코어, 시간경과 그리고 다른 데이터들을 인정해야 한다.</p>
									<p style="font-weight:bold">제 3자에 의해 공급된 실기간 정보는 시간 지연 및 오류를 초래할 수 있다.</p>
									<p style="font-weight:bold">따라서 이 데이터를 기준으로 베팅한 것은 전적으로 고객 자신들의 위험성 이라는 것을</p>
									<p style="font-weight:bold">인정해야 해야 하며 회사는 고객의 직간접적인 손실에 대해 보상해 줄 책임이 없다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.14 약관의 어긋나는 베팅을 하였을 경우, 도나 신용카드 및 수표 사용 등의 불법적인</p>
									<p style="font-weight:bold">방법으로 입금한 경우, 채팅 그리고 이메일로 서포트 연락 시 부적절 한</p>
									<p style="font-weight:bold">언어를 사용한 경우, 이미 완료된 답변에 반복되는</p>
									<p style="font-weight:bold">문의로 업무에 지장을 초래한 경우 회사는 해당고객의 계정을 통보 없이 정지 할 권한이 있다.</p>
									<br><br>
									<p style="font-weight:bold">1.1.15 어느 북메이커든지 플레이어의 베팅한도를 줄일 수 있는 권리를 가지고 있으며</p>
									<p style="font-weight:bold">이 사항에 대하여 설명할 의무가 없다. 그리고 북메이커는 합당한 이유가</p>
									<p style="font-weight:bold">있을 시 회사는 해당고객의 계정을 통보 없이 정지 할 권한이 있다.</p>
									<br><br>
									<br><br>
									<p style="font-weight:bold">1.2 포기와 연기,지연</p>
									<br><br>
									<p style="font-weight:bold">1.2.1 만약 이벤트가 예정시작일자(예정 시작시간 12시간 이내)에</p>
									<p style="font-weight:bold">시작되지 않거나 예정일 이내에 종료되지 않을 경우 모든 베팅은 무효이다.</p>
									<br><br>
									<p style="font-weight:bold">1.2.2 종료 전 경기가 중단되어 되어 30시간 이내에 다시 시작하지 않을 경우</p>
									<p style="font-weight:bold">중단될 당시에 이미 결정된 베팅 결과를 제외하고 모두 무효가 된다.</p>
									<p style="font-weight:bold">마켓은 베팅이 발생된 것에 대해 전적으로 결정된다. 예를 들어,</p>
									<p style="font-weight:bold">이미 결정이 된 ‘하프타임’ ‘쿼터’ ‘이닝’ 또는 다른 기간의 쿼터에 대한 베팅과</p>
									<p style="font-weight:bold">같이 만약 골이 경기 중단 시점에서 나올 경우 ‘첫 번째 팀 스코어’ 또는</p>
									<p style="font-weight:bold">첫 골 시간’의 베팅은 유지 된다.</p>
									<p style="font-weight:bold">*예외 스포츠 : 테니스, 탁구의 경우 30시간이 지나도 공식결과가 나와야 처린된다.</p>
									<br><br>
									<p style="font-weight:bold">1.2.3 만약 이벤트가 예정 시간 이내에 종료되지 않은 상태에서 공식 결과가</p>
									<p style="font-weight:bold">선언되거나 결과가 특정 이벤트 주체 측에 의해 결정될 경우,</p>
									<p style="font-weight:bold">회사는 이 경기를 공식적으로 유효하다고 간주할 권한이 있다.</p>
									<br><br>
									<p style="font-weight:bold">1.3 장소 변경과 플레이 전 기재된 이벤트</p>
									<br>
	 								<table id="tt1">
										    <tr>
										        <th style="text-align: center">W1 = 팀1 승</th>
										        <th style="text-align: center">draw = 무</th>
										        <th style="text-align: center">W2 = 팀2 승</th>
										        <th style="text-align: center">1x = 팀1 승 또는 무</th>
										        <th style="text-align: center">12 = 팀1 승 또는 팀2 승</th>
										    </tr>
										    <tr>
										        <td>or = 또는</td>
										        <td>X = 무</td>
										        <td>& = 그리고</td>
										        <td>x2 = 팀2 승 또는 무</td>
										        <td></td>
										    </tr>
										</table>
									<p style="font-weight:bold">1.3.2 별도의 언급이 없을 경우, 경기가 중립 그라운드(그 반대의 경우 포함)에서</p>
									<p style="font-weight:bold">일정대로 개최되면 모든 베팅은 유효하다. 하지만 경기 장소가 변경되어</p>
									<p style="font-weight:bold">홈팀이 원정경기(또는 그 반대일 경우 포함)를 하게 되면 모든 베팅은 무효로 간주된다.</p>
									<p style="font-weight:bold">또한 홈팀과 원정팀 이름이 반대로 잘못 기재될 경우에도 회사는</p>
									<p style="font-weight:bold">베팅을 무효로 간주할 권한이 있다.</p>
									<br><br>
									<p style="font-weight:bold">1.3.3 한 팀/국가/연맹(또는 그 이상)에 의해 개최된 경기는 중립구장에서</p>
									<p style="font-weight:bold">경기한 것으로 간주된다. 만약 개최 팀이 원정 팀으로 등재될 경우 베팅은 유효하다.</p>
									<p style="font-weight:bold">예를 들어 독일에서 개최된 월드컵 경기에서 “아르헨티나-독일” 이벤트로 기재될</p>
									<p style="font-weight:bold">경우 이 이벤트에 대한 모든 베팅은 승인된다.</p>
									<br><br>
									<p style="font-weight:bold">1.3.4 모든 팀간의 경기가 아닌 이벤트에 대해서 마켓이 개장한 후 경기 장소가</p>
									<p style="font-weight:bold">변경될 경우 개인 스포츠 룰 이내에서 규정된 장소를 제외하고 모든 베팅은</p>
									<p style="font-weight:bold">여전히 유효한 것으로 간주된다.</p>
									<br><br>
									<p style="font-weight:bold">1.3.5 만약 플레이어나 팀이 틀리게 등재될 경우 베팅은 무효가 된다.</p>
									<p style="font-weight:bold">이미 홍보했던 상대 팀이 변경될 경우 모든 베팅은 취소된다.</p>
									<p style="font-weight:bold">다만 한글로 표기된 팀 이름의 경우 한국 플레이어들이 많이</p>
									<p style="font-weight:bold">이용하는 라이브 스코어 사이트를 참고하여 업데이트 되기에 번역 오류로</p>
									<p style="font-weight:bold">인한 팀 이름에 관한 분쟁 시에는 영어로 표기된 공식 팀 이름을 기준으로 처리한다.</p>
									<br><br>
									<p style="font-weight:bold">1.4 기간</p>
									<br><br>
									<p style="font-weight:bold">1.4.1 공지된 이베트 기간은 단순 참조용일 뿐이다. 개인 스포츠 룰을 제외하고</p>
									<p style="font-weight:bold">예정된 기간이 변경되었을 지라도 베팅은 유효하다.</p>
									<br><br>
									<p style="font-weight:bold">1.4.2 로스타임 또는 연장전에 발생된 득점은 정규시간 마지막 종료시간에</p>
									<p style="font-weight:bold">발생된 것으로 간주된다. 예를 들어 축구경기 전반전 로스타임에서</p>
									<p style="font-weight:bold">득점이 나오면 45분에 득점을 한 것으로 간주된다.</p>
									<br><br>
									<p style="font-weight:bold">1.4.3 정상적이지 않은 경기 시간, 계산절차 또는 경기구성방식에 대하여</p>
									<p style="font-weight:bold">스포츠 규칙을 위반할 경우, 회사는 베팅을 무효화할 권한을 갖는다.</p>
									<br><br>
									<p style="font-weight:bold">1.4.4 광고했던 출전 팀이 바뀌는 등 경기 구성 방식이 변경될 경우 베팅은 무효가 된다.</p>
									<br><br>
									<p style="font-weight:bold">1.5 결과</p>
									<br><br>
									<p style="font-weight:bold">1.5.1 결과는 스포츠베팅(경기 종료 후 30분내) 라이브베팅(경기 종료 후 20분내)</p>
									<p style="font-weight:bold">에 처리된며 ,해당시간 이전에 결과처리에 대한 문의시 받아들여지지 않는다.</p>
									<p style="font-weight:bold">모든 결과 처리는 일괄 처리되며, 특정 플레이어나 특정 베팅을 공식결과와</p>
									<p style="font-weight:bold">다르게 적용하지 않는다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.2 결과에 대한 실격 또는 변경이 차후에 발생되는 것과 관계없이 관련된</p>
									<p style="font-weight:bold">시상결과는 공식결과로 집계된다. 만약 시상식이 없을 경우, 결과는</p>
									<p style="font-weight:bold">차후의 실격 또는 변경과 관계없이 마켓이 결정될 때 관련 주체 측의 공식</p>
									<p style="font-weight:bold">결과에 따라서 결정된다. 공식적인 결과가 불가할 경우, 마켓이 결정되고</p>
									<p style="font-weight:bold">회사가 최종 결정을 한 가능한 증거를 참고해서 결정된다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.3 마켓은 일반적으로 이벤트가 결정된 후 즉시 결정된다.</p>
									<p style="font-weight:bold">공식 결과가 나오기 전에 단순히 고객 서비스로서 일부 마켓이 결정될 수도 있다.</p>
									<p style="font-weight:bold">회사는 마켓 이벤트의 오류가 발생될 때 이를 해결할 권리를 가지고 있으며</p>
									<p style="font-weight:bold">이것은 당신의 보유머니에 그대로 반영된다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.4 결과에 대한 불확실성이 있는 이벤트일 경우, 회사는 마켓 결정을 보류할 권리를 갖는다.</p>
									<p style="font-weight:bold">마켓 결과가 공식적으로 확인되지 않을 경우, 회사는 무효 처리할 수 있다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.5 회사는 결정된 베팅에 대한 이벤트 결론 후 72시간 만에 이루어진</p>
									<p style="font-weight:bold">변경 또는 수정을 인정치 않는다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.6 회사 웹사이트에 공지된 결과와 공식 결과가 충돌할 경우 정확한 결과를</p>
									<p style="font-weight:bold">결정하기 위하여 특정 이벤트에 대한 회사의 비디오 판독을 참조해서 결정한다.</p>
									<p style="font-weight:bold">만약 비디오 판독이 불가할 경우, 경기 주체 측이 공식적으로 공지된</p>
									<p style="font-weight:bold">것을 최종 결과로 간주된다.웹사이트를 통해 공식적인 결과를 제공할 수 없을</p>
									<p style="font-weight:bold">경우 또는 결과가 인위적으로 조작되었을 경우 회사는</p>
									<p style="font-weight:bold">최종 결과를 결정하고 변경할 권한을 갖는다. 이 건과 관련해서 회사의 결정은</p>
									<p style="font-weight:bold">최종적인 것이 되며 구속력을 지닌다. 5.7가격이 틀리게 게시되고 계산될 경우,</p>
									<p style="font-weight:bold">회사는 베팅을 무효화할 수 있다. 이럴 경우 마켓 평균치와 비교하여 지불금의</p>
									<p style="font-weight:bold">100% 이상의 편차를 포함시킨다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.7 개인 스포츠 경기에 대해 특별한 참조사항이 없을 경우,</p>
									<p style="font-weight:bold">모든 마켓의 정산은 공식경기규칙을 기준으로 결정된다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.8 개인 스포츠 경기에 대해 특별한 참조사항이 없을 경우,</p>
									<p style="font-weight:bold">상대 팀은 팽팽한 접전의 경기를 해야 베팅이 유효하다.</p>
									<br><br>
									<p style="font-weight:bold">1.5.9 무승부에 대한 가격이 제시되지 않을 경우, 공식경기규칙이 승자를 결정할 수 없을 경우,</p>
									<p style="font-weight:bold">또는 공식 결과가 무승부일 경우, Dead Heat(접전/막상막하)이 적용된다.</p>
									<p style="font-weight:bold">Dead Heat(접전/막상막하)이 발생할 경우 내기에 건 돈은 스포츠 게임</p>
									<p style="font-weight:bold">참여자 수로 나누어진 후 잃은 나머지 배팅금과 전체 배당으로 결제된다.</p>
									<br><br>
									<p style="font-weight:bold">1.6 베팅</p>
									<br><br>
									<p style="font-weight:bold">1.6.1 약관에 따라 완료된 베팅은 취소가 불가능하며, 고객은 베팅전 반드시</p>
									<p style="font-weight:bold">베팅금액과 베팅종류를 확인해야한다. 회사는 실수로 베팅한 내역에 관해 일체의 책임 권한이 없다.</p>
									<br><br>
									<p style="font-weight:bold">1.6.2 한 경기 내 크로스베팅은 불가능 하다. 단, 승무패X코너킥X</p>
									<p style="font-weight:bold">옐로우 카드의 조합은 가능하다.승무패와 언더/오버 크로스 베팅은 조합할 수 없으며,</p>
									<p style="font-weight:bold">이미 조합 되어있는 “승무패 & 토탈 오버/언더”를 통해 베팅이 가능하다.</p>
									<br><br>
									<p style="font-weight:bold">1.6.3 고객은 로그인 후 1경기 혹은 이상의 경기를 선택하면 오른쪽 상단 베팅</p>
									<p style="font-weight:bold">슬립에 선택내역 확인이 가능하다. 2경기 이상을 선택하면 자동으로</p>
									<p style="font-weight:bold">멀티베팅으로 전환되며, 완료된 베팅은 베팅슬립내 베팅내역에서 확인할 수 있다.</p>
									<br><br>
									<p style="font-weight:bold">1.6.4 최대, 최소 베팅 한계는 스포츠와 게임에 따라서 변동하며,</p>
									<p style="font-weight:bold">맥스벳을 눌러 최대 베팅 가능금액을 확인할 수 있다.단,</p>
									<p style="font-weight:bold">싱글베팅시 맥스벳 이상 중복베팅은 불가능하다.</p>
									<br><br>
									<p style="font-weight:bold">1.6.5 축 베팅의 경우 하나라도 픽이 다르면 다른 베팅으로 정상 처리된다.</p>
									<p style="font-weight:bold">단, 동일 픽을 중복 베팅 할때는 합한 베팅 금액이 베팅한도를 넘으면 안된다.</p>
									<br><br>
									<br><br>
									<p style="font-weight:bold">1.7 시간의 수락</p>
									<br><br>
									<p style="font-weight:bold">1.7.1 이벤트 또는 경기가 시작이 된 후 실수로 인해 베팅이 승인되었을 경우,</p>
									<p style="font-weight:bold">해당 선택에 대한 베팅은 무효가 된다. 단, 문제가 있는 이벤트가 회사의</p>
									<p style="font-weight:bold">작동 시스템 또는 라이브 서비스에 의해 승인이 될 경우는 예외로 할 수 있다.</p>
									<p style="font-weight:bold">(예 : 경기 시작 시간이 표기와 다르게 몇 시간 빠르거나 늦게 시작되어도</p>
									<p style="font-weight:bold">실제 경기 시작전에 베팅이 완료되면 이는 정상 처리된다.)</p>
									<br><br>
									<p style="font-weight:bold">1.7.2 회사는 명백한 오류를 수정할 권한을 갖는다. 상호 동의를 할 경우,</p>
									<p style="font-weight:bold">이벤트가 시작된 후 베팅을 한 것에 대하여 회사는 승인할 권한이 있고</p>
									<p style="font-weight:bold">그 당시의 레이스 또는 이벤트에 대한 베팅은 유효하다. 하지만 고객이</p>
									<p style="font-weight:bold">경기 결과를 미리 알고 있었다는 징후가 있을 경우 회사는 그 베팅을 무효화할 권한을 갖는다.</p>
									<br><br>
									<p style="font-weight:bold">1.7.3 베팅 시간에 대한 분쟁이 있을 경우, 회사의 서버에 기록된 시간이 그 기준이 된다.</p>
									<br><br>
									<p style="font-weight:bold">1.8 라이브 / 인-러닝(진행중인) 베팅</p>
									<br><br>
									<p style="font-weight:bold">1.8.1 라이브 또는 인-러닝 베팅은 이벤트가 진행될 때의 갑작스런 큰</p>
									<p style="font-weight:bold">배당변경의 적용을 받는다. 이런 이유 때문에 회사는 표시된 배당이 항상 베팅</p>
									<p style="font-weight:bold">가능하다고 보장해 줄 수 없다. 또한 회사의 전적인 재량권에 의해 전체</p>
									<p style="font-weight:bold">경기에 대한 배당을 제공해 줄 권한이 없다.</p>
									<br><br>
									<p style="font-weight:bold">1.8.2 추가적으로, 가격이 회사 웹사이트에 등재되었을 지라도 만약 베팅이</p>
									<p style="font-weight:bold">이루어질 때 그 당시의 가격이 산업시장가격과 차이가 있어 회사의 통제 밖의</p>
									<p style="font-weight:bold">상황을 초래할 경우 회사는 베팅을 거절하고 무효화할 권한을 갖는다.</p>
									<br><br>
									<p style="font-weight:bold">우리는 효율성과 즐거움을 위해 최신기술을 사용합니다. 우리 아이벳 사이트를 통해서 </p>
									<p style="font-weight:bold">고객들에게 공평한 거래 서비스를 제공할 것을 약속 드립니다.</p>
									<br><br>
									<p style="font-weight:bold">문의 사항이나 자세한 정보가 필요하실 경우 저희 고객서비스 상담원에게 연락을 주시기 바랍니다.</p>
									<p style="font-weight:bold">여기게 스포츠 베팅의 다양한 규정들이 명시 되었지만, 가끔씩 이벤트 자체 규정이 있는 불가피한 상황도 있습니다.</p>
									<br><br>
									<p style="font-weight:bold">우리는 규정을 추가할 권리가 있습니다. 고객은 베팅 전 각 이벤트의 규정들을 숙지하실 책임이 있습니다.</p>					
								</div>
							</div>
						</li>
					</ul>
					</div>
					<div id="l-tab5" class="left_tab_con">
					<ul class="smk_accordion">
						<li>
							<div class="acc_head br2"><h3>축구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a.  축구 배팅은 IBET25 에서 별도로 규정한 내역을 제외하고 연장전과 승부차기는 포함되지 않고 정규 경기시간을 기준으로 승인된다. 정규경기 시간에는 심판에 의해 전반전과 후반전에 추가된 시간까지를 포함한다.</p>
									<br><br>
									<p>b. 정규 경기시간 종료 전에 경기가 중단된 후 30시간 이내에 재개되지 않을 경우 사법적인 판단과 관계 없이 이 경기는 무효이다.</p>
									<p>경기 중단 시점까지 만약 결과에 대한 명확한 정의가 있을 경우 배팅은 유효하며 규정에 의거하여 산출된다. 그 이외의 상황은 환불된다.</p>
									<p>경기가 30시간 이상 지연될 경우 배팅은 환불 된다.</p>
									<br><br>
									<p>c. 전반전과 후반전 사이 (하프타임)에 레드/엘로우 카드 또는 선수 퇴장이 선언될 경우 전체 매치에 대하여 배팅결과가 적용될 뿐이며 전반전 또는 후반전 각각의 상황에 대해서는 배팅결과에 적용을 받지 않는다.</p>
									<br><br>
									<p>축구 배팅에 대한 항목들은 다음과 같다:</p>
									<p>1. 승리 팀 .</p>
									<p>매치의 결과를 예측하는 것으로서 정규경기 시간에 대해서만 배팅이 인정된다.</p>
									<br><br>
									<p>2. 토탈.</p>
									<p>매치의 결과로서 토탈 스코어가 토탈 배팅과 동일하고 옵션으로 정확한 골 수가 명시되지 않을 경우 배팅은 환불된다. 또한 각 팀 또는 플레이어들에게 동일하게 적용된다.</p>
									<br><br>
									<p>3.  핸디캡.</p>
									<p>핸디캡은 단지 2가지 옵션 승,패(핸디캡 1 또는 핸디캡 2 / 무승부에 대한 옵션 없음)만을 갖는다. 핸디캡이 고려된 상황에서 무승부가 발생될 경우 배팅은 환불된다. (배팅에 적용된 매치의 기간과 관계없이). 또한 카드/코너/또는 다른 변수의 핸디캡에 대해서도 동일하게 적용된다.</p>
									<br><br>
									<p>4. 더블찬스 결과</p>
									<p>다음과 같은 결과들이 나올 수 있다:</p>
									<p>1X –  팀-1이 승리하거나 무승부가 나올 경우</p>
									<p>X2 – 팀-2이 승리하거나 무승부가 나올 경우</p>
									<p>12 – 팀-1 또는 팀-2가 승리할 경우</p>
									<br><br>
									<p>5. 어느 플레이어가 최소 1골을 기록할 것인가?</p>
									<p>상대 팀에서 골을 넣은 후 심판이 공식적으로 득점을 인정해줘야 한다. 만약 플레이이어가 매치에 출전하지 않을 경우 배팅은 무효이다.</p>
									<br><br>
									<p>6. 어느 팀이 다음 라운드로 진출할 것인가?</p>
									<p>배팅결과는 지정된 팀이 경기에 출전하여 토너먼트 라운드 시리즈 마지막 매치를 완료한 후 산출된다. 라운드 중의 경기 결과에 관계 없이 지정된 팀이 최종적으로 다음 라운드로 진출을 했을 경우 배팅에서 승리한 것으로 간주된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다.</p>
									<br><br>
									<p>7.  개별적(개인적) 토탈 (지정된 팀)</p>
									<p>지정된 팀이 명시된 골 한도 이상 또는 이하로 득점을 올릴 것인지 예측하여 배팅하는 것을 말한다.  매치의 결과로서 토탈 스코어가 토탈 배팅과 동일할 경우 배팅은 환불된다. 상대 팀이 기록한 골이 심판에 의해 공식적으로 인정이 되어야 배팅이 유효하다. 모든 자책골은 상대 팀의 득점으로 간주된다.</p>
									<br><br>
									<p>8. 토너먼트 승리 팀.</p>
									<p>배팅결과는 토너먼트 종료 후 결과에 따라서 계산된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다. 배팅 참가 예정 팀이 출전 포기 또는 실격 패를 당할 경우 이 팀에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>9. 스테이지(예: 16강, 32강 등등)의 승리 팀.</p>
									<p>배팅결과는 라운드 토너먼트인 그룹간 모든 매치가 완료된 후 산출된다.라운드 경기가 종료된 후 결과가 이미 결정되었음에도 불구하고 차후 사법부나 기타 기관에서 경기 결과를 취소하거나 변경하더라도 배팅에 영향을 주지 않는다.배팅을 하였던 팀이 경기에 참가하지 않을 경우 이 팀에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>10. 매치에서 어느 팀이 선취 골을 기록할 것인가?</p>
									<p>만약 자책 골로 첫 득점이 발생될 경우, 상대 팀이 득점을 한 것으로 간주되어 결과가 계산된다.</p>
									<br><br>
									<p>11. 어느 팀이 다음 골을 기록할 것인가?</p>
									<p>만약 그 다음 골이 자책골일 경우, 상대 팀이 득점을 한 것으로 간주되어 결과가 계산된다.</p>
									<br><br>
									<p>12. 어느 팀이 마지막 골을 기록할 것인가?</p>
									<p>만약 마지막 골이 자책골일 경우, 상대 팀이 득점을 한 것으로 간주되어 결과가 계산된다.</p>
									<p>경기가 중단되어 30시간이 경과해도 재개되지 않을 경우 이 포지션에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>13. 양 팀 모두 득점을 올릴 것인가?</p>
									<p>지정된 매치와 지정된 팀이 각각 최소 한 골씩을 기록할 것인지 예측하는 것을 뜻한다.</p>
									<br><br>
									<p>14. 토탈 홀/짝</p>
									<p>매치 결과가“0:0″일 경우 결과는 “짝”으로 인정된다.</p>
									<br><br>
									<p>15. 무승부가 고려되지 않은 상황에서의 승리.</p>
									<p>정규경기 시간 종료 후 무승부 결과가 나올 경우 이 포지션에 대한 당첨 금액(rate)은 계수(coefficient) 1로서환불된다.</p>
									<br><br>
									<p>16. 매치에서 토탈 몇 골이 나올 것인가?</p>
									<p>매치의 정확한 골 수를 예측하여 배팅을 하는 것을 말한다. 정규 경기시간에 기록된 골만이 인정된다. (연장전 또는 승부차기는 포함되지 않으며 심판이 전(후)반전에 추가 시간을 부여한 부분은 그대로 인정된다.)</p>
									<br><br>
									<p>17. (지정된 팀) 몇 골을 기록할 것인가?</p>
									<p>매치에서 지정된 한 팀이 최종 몇 골을 기록할 것인지 예측하는 것을 말한다. (연장전 또는 승부차기는 포함되지 않으며 심판이 전(후)반전에 추가 시간을 부여한 부분은 그대로 인정된다). 자책골이 발생될 경우 상대팀이 득점한 것으로 인정된다.</p>
									<br><br>
									<p>18. 1-하프(전반전) / 매치.</p>
									<p>전반전 또는 전체 경기의 결과를 예측하여 배팅을 할 수 있다. 첫번째 라인에서 전반전의 결과 그리고 두번째 라인에서 전체 경기 결과가 공지된다. 전반전의 결과 전후반 결과를 모두 맞추는 게임이다.</p>
									<br><br>
									<p>19. 어느 플레이어가 첫 골을 기록할 것인가?</p>
									<p>어느 플레이어가 첫 골을 기록할 것인지 예측하는 것을 뜻하는 것으로서 지정된 선수가 출전을 하지 않을 경우 이 포지션의 해당 선수에 대한 모든 배팅은 환불처리 된다. 만약 배당이 책정되지 않은 선수 중에서 득점을 올릴 경우 이 포지션에 대한 모든 배팅은 무효이다.</p>
									<p>(예외: 첫 골이 난 후 출전하지 않은 플레이어에 대한 배팅; 이 경우 배팅은 환불 처리 된다. / 첫 골이 자책골일 경우 (배당이 책정된 선수에 의해 득점이 발생되었을 지라도), 이 포지션에 대한 모든 배팅은 무효이다.)</p>
									<br><br>
									<p>20. 어느 선수가 마지막 골을 기록할 것인가?</p>
									<p>매치에서 마지막 골을 기록할 플레이어를 예상하는 것을 말한다. 플레이어가 매치에 출전하지 않을 경우, 이 포지션에 대한 해당 선수에 대한 모든 배팅은 환불처리 된다. 만약 배당이 책정되지 않은 선수 중에서 마지막 득점을 올릴 경우 이 포지션에 대한 모든 배팅은 무효이다.</p>
									<p>(예외: 게임에 출전하지 않은 플레이어에 대한 배팅: 이 경우 배팅은 환불 처리 된다. / 만약 마지막 골이 자채골일 경우 (배당이 책정된 선수에 의해 득점이 발생되었을 지라도), 이 포지션에 대한 모든 배팅은 무효이다.)</p>
									<br><br>
									<p>21.매치의 정확한 스코어.</p>
									<p>매치의 정확한 골 스코어를 예측하는 것을 뜻한다. 매치의 결과에 따라 정확한 스코어가 라인에서 공식 배당이 지정되지 않을 경우 “그외의 점수”에 배팅한 것만 승리로 간주한다.</p>
									<br><br>
									<p>22. 몇 점 차이로 승부가 날 것인가?</p>
									<p>양 팀이 스코어 차이 또는 무승부로 매치가 종료될 것인지에 대하여 예측하여 배팅을 하는 것을 말한다.</p>
									<br><br>
									<p>23. 오버/언더 코너(corners)킥</p>
									<p>매치의 결과로서 토털 코너의 수치가 토탈 배팅결과와 같은 경우, 배팅은 무효처리 되어 배팅금은 환불된다. 팀이 얻어낸 코너(corner)만이 단지 계산에 포함된다. 코너를 얻었지만 이를 플레이하지 않을 경우 배팅결과 계산에서는 포함되지 않는다. 만약 어느 팀이 코너를 계속 허용할 경우 (코너킥의 어시스트로 인한 범실 또는 실책 때문에)에는 한 개의 코너킥으로 결과에 계산된다.</p>
									<br><br>
									<p>24. 매치에서 첫 코너킥</p>
									<p>어느 팀이 첫 코너킥을 얻어낼 것인지에 대해 예측하는 것을 말한다. 매치에서 코너킥이 없을 경우, 이러한 경우의 배팅은 무효처리되어 환불된다. 단지 팀이 얻은 코너킥 만이 카운트 된다. 코너킥을 얻어냈지만 이를 플레이 하지 않을 경우 계산에서 제외된다.</p>
									<br><br>
									<p>25. 매치에서 마지막으로 코너킥을 얻어낸 팀.</p>
									<p>어느 팀이 마지막으로 코너킥을 얻어낼 것인가를 예측하는 것을 말한다. 매치에서 코너킥이 없을 경우, 이러한 경우의 배팅은 무효처리되어 환불된다.단지 팀이 얻은 코너킥 만이 카운트 된다. 코너킥을 얻어냈지만 이를 플레이 하지 않을 경우 계산에서 제외된다.</p>
									<br><br>
									<p>26. 첫 코너킥이 발생된 시간.</p>
									<p>라인에서 제시한 시간 사이에 첫 코너킥이 발생될 것인지에 대하여 예측하는 것을 말한다. 코너킥이 없을 경우, 이러한 경우의 배팅은 무효처리되어 환불된다. 실제 코너킥이 발생된 시간만이 인정되며 심판에 의해 선언된 시간은 포함되지 않는다.</p>
									<br><br>
									<p>27. 어느 팀이 가장 많은 코너킥을 얻어낼 것인가?</p>
									<p>단지 팀이 기록한 코너킥 만이 인정된다. 코너킥을 얻어냈지만 플레이를 하지 않을 경우 계산에서 제외된다. 코너킥이 발생되지 않을 경우 승리 옵션은 “무승부”이다.</p>
									<br><br>
									<p>28. 토탈 코너킥 홀/짝.</p>
									<p>코너킥이 없을 경우 배팅결과는 “짝”이다. 단지 팀이 기록한 코너킥만이 인정된다.  코너킥을 얻어냈지만 플레이를 하지 않을 경우 계산에서 제외된다. 만약 어느 팀이 코너킥를 계속 허용할 경우-즉, 심판이 코너킥을 다시 하라고 명령할 때 (범실 또는 실책 때문에), 단지 하나의 코너킥만으로 인정된다.</p>
									<br><br>
									<p>29. 전반전 또는 후반전에 지정된 팀이 승리를 할 것인가?</p>
									<p>지정된 팀이 최소한 전반전 또는 후반전에 승리를 거둘 것인지 예측하는 것을 말한다.</p>
									<br><br>
									<p>아래와 같은 결과들이 가능하다:</p>
									<p>“Yes” –  전반전 또는 후반전 (전반전 또는 후반전 각각에 대하여 적용이 되고 전체 경기에 대해서 적용하는 것이 아님)의 결과에 따라서 지정된 팀이 승리(패배 또는 무승부는 해당사항이 아님)할 경우의 당첨 금액(rate)</p>
									<p>“No” – 지정된 팀에 전반전 또는 후반전 어느 곳에서도 승리하지 못할 경우의 결과</p>
									<br><br>
									<p>30.  (지정된 팀)이 전(후)반전 모두 승리를 할 것인가?</p>
									<p>지정된 팀이 전반전과 후반전 모두 승리를 할 것인지에 대하여 예측하여 배팅을 하는 것을 말한다.(예를 들어 후반전의 결과는 전반전과 후반전을 합산한 결과를 의미하지 않고 각각 별개의 개념으로 간주된다)</p>
									<p>아래와 같은 결과들이 가능하다:</p>
									<p>“Yes” –  지정된 팀이  전반전과 후반전 모두 승리를 할 경우의 배팅 결과.만약 전반전과 후반전 어느 한곳에서 무승부가 발생될 경우 이 경우의 배팅결과는 배팅에서 패배한 것으로 최종 간주된다.</p>
									<p>“No” – 지정된 팀이 최소한 어느 하프 중 한곳에서 무승부 또는 패배를 할 경우의 배팅결과를 말한다.</p>
									<br><br>
									<p>31. 첫 골이 발생된 시간.</p>
									<p>라인에서 제시한 시간간격을 기준으로 첫 골이 기록된 시간을 예측하는 것을 말한다. 만약 0-0 무승부일 경우 첫 골에 대한 배팅은 패배한 것으로 간주된다.</p>
									<br><br>
									<p>32. 마지막 골이 발생된 시간.</p>
									<p>라인에서 제시한 시간간격을 기준으로 마지막 골이 기록된 시간을 예측하는 것을 말한다. 만약 0-0 무승부일 경우 마지막 골에 대한 배팅은 패배한 것으로 간주된다.</p>
									<br><br>
									<p>33. 어느 하프(전반전 또는 후반전)에서 더 많은 스코어가 기록될 것인가?</p>
									<p>어느 하프(전반전 또는 후반전)에서 더 많은 스코어가 기록될 것인가를 예측하는 것을 말하다.  지정된 하프(심판인 인정한 추가시간 포함)에서 기록된 골은 인정된다. 하지만 연장전을 포함되지 않는다.</p>
									<br><br>
									<p>34. 어느 하프(전반전 또는 후반전)에서 (지정된 팀)이 더 많은 스코어가 기록될 것인가?</p>
									<p>어느 하프(전반전 또는 후반전)에서 지정된 팀이 더 많은 스코어가 기록될 것인가를 예측하는 것을 말하다.  지정된 하프(심판인 인정한 추가시간 포함)에서 기록된 골은 인정된다. 하지만 연장전을 포함되지 않는다. 자책골이 발생될 경우 상대 팀의 득점으로 계산된다.</p>
									<br><br>
									<p>35. 첫 골이 어떠한 방식으로 기록할 것인가?</p>
									<p>첫 골이 어떤 형태로 기록될 것인지를 예측하는 것을 말한다.</p>
									<br><br>
									<p>이에 대한 결과치는 아래와 같다:</p>
									<p>롱슛(페널티 존 바깥쪽에서 발생되는) with a blow</p>
									<p>헤딩</p>
									<p>페널티 킥</p>
									<p>페널티 존에서의 기록한 골</p>
									<p>자책골</p>
									<p>득점이 나지 않은 상황</p>
									<br><br>
									<p>팀에서 기록한 스코어와 관계없이, 만약 페널티킥 첫 골이 나올 경우, “With a penalty kick”의 결과는 승리 결과로 간주된다. 기타 다른 결과들(“with a blow”를 포함해서)이 나올 경우 배팅에서 패한 것으로 간주된다.  헤딩으로 첫 득점이 발생될 경우, “Header”의 결과는 승리 결과 간주된다. 기타 다른 결과들(“with a blow”를 포함해서)이 나올 경우 배팅에서 패한 것으로 간주된다. 자책골로 첫 득점이 발생될 경우 “own goal”의 결과는 승리 결과로 간주된다. 기타 다른 결과들(“with a blow”를 포함해서)이 나올 경우 배팅에서 패한 것으로 간주된다. </p>
									<br><br>
									<p>36. 어느 팀이 먼저 엘로우 카드를 받을 것인가?           </p>
									<p>어느 팀의 플레이어가 먼저 엘로우 카드를 받을 것인가를 예측하는 것을 말한다.</p>
									<p>매치 리포트 규정에 의거하여 만약 1분 이내에 상대 팀의 선수들에게 2개 이상의 엘로우 카드가 발생될 경우 이 포지션에 대한 배팅은 무효처리되고 환불된다. 이러한 조건의 배당이 등록되지 않을 경우 이 포지션에 대한 모든 배팅은 무효처리 된다. 매치에서 엘로우 카드가 나오지 않을 경우, 이 포지션에 대한 배팅에서 어느 누구도 승리할 수 없다. 이러한 조건의 옵션이 라인에 공지되지 않을 경우 이 포지션에 대한 모든 배팅은 무효처리 된다.</p>
									<br><br>
									<p>37. 어느 팀이 더 많은 엘로우 카드를 받을 것인가?</p>
									<p>한 선수가 엘로우 카드를 2번 받은 후 퇴장할 경우 계산에서 제외된다. 심판에 의해 공식적으로 발행된 엘로우 카드만이 인정된다. 만약 플레이어가 아닌, 즉 감독, 코치 또는 스텝 등에게 엘로우 카드가 나올 경우 계산에서 제외된다. 심판의 경기 종료 휘슬이 울릴 때 까지를 기준으로 배팅결과가 산출된다. 전(후)반전 휴식시간에 발생된 모든 카드는 전체 경기의 결과를 산출하는데 적용되고 전(후)반전 각각의 하프타임 옐로우 카드 개수에는 적용되지 않는다.</p>
									<br><br>
									<p>38.  (지정 )>에 대한 엘로우 카드 (오버/언더)?</p>
									<p>엘로우 카드가 지정된 팀의 플레이어에게 라인에 공지된 수치보다 그 이상 또는 이하로 나올 것인지를 예측하는 것을 말한다. 동일 선수에게 2장의 엘로우 카드가 발생되어 선수가 퇴장될 경우는 적용되지 않는다. 그라운드에서 플레이를 하고 있는 선수들에게 발행된 엘로우 카드만 인정된다. 선수 이외의 감독, 코치 그리고 스텝 등에게 발행된 엘로우 카드는 계산에서 제외된다. 심판의 경기 종료 휘슬이 울릴 때 까지를 기준으로 배팅결과가 산출된다. 전(후)반전 휴식시간에 발생된 모든 카드는 전체 경기의 결과를 산출하는데 적용되고 전(후)반전 각각의 하프타임 옐로우 카드 개수에는 적용되지 않는다.</p>
									<br><br>
									<p>39. 매치에서 첫 엘로우 카드</p>
									<p>매치에서 엘로우 카드가 발생되지 않을 경우, 제공된 배팅은 무효처리되고 환불된다.플레이어에게 엘로우 카드가 발생되었던 실제 경기 시간만 인정된다.</p>
									<br><br>
									<p>40. 토탈 엘로우 카드 “짝/홀”</p>
									<p>엘로우 카드가 매치에서 나오지 않을 경우 “짝”으로 간주된다. 전(후)반전 사이의 휴식시간에 발생되는 모든 카드는 전체 경기 결과를 계산하는데 적용된다. 그러나 전반전 또는 후반전 각각의 옐로우카드 갯수 배팅에 대해서는 고려되지 않는다.</p>
									<br><br>
									<p>41. 자책골 (지정된 팀)</p>
									<p>지정된 팀이 최소한 1개 이상의 자책골을 기록할 할 것인지를 예측하는 것을 뜻한다.</p>
									<br><br>
									<p>42. (지정된 팀)이 각각의 하프(전/후반)에서 득점을 올릴 것인가?</p>
									<p>이에 대한 결과는 다음과 같다:</p>
									<p>Yes – 지정된 팀이 전반전과 후반전에 각각 최소한 1골 이상을 기록할 경우</p>
									<p>No –Yes와 반대의 경우</p>
									<br><br>
									<p>43. 어느 시점에 승리 팀이 결정될 것인가?</p>
									<p>이에 대한 결과는 다음과 같다:</p>
									<p>정규시간– 정규경기 시간(심판에 의해 추가 시간이 부여된 전/후반전 시간도 포함됨)이 종료된 후 승리 팀이 결정되는 경우</p>
									<p>연장전– 정규경기 시간(심판에 의해 추가 시간이 부여된 전/후반전 시간도 포함됨)이 종료된 후 무승부일 경우 연장전에서 승리 팀이 결정되는 경우</p>
									<p>정규경기시간과 연장전에서도 무승부일 경우 승부차기로 최종 승리 팀이 결정되며 이를 반영하여 배팅 결과가 산출 된다.</p>
									<br><br>
									<p>44. 선취골을 기록한 팀이 승리하는 경우.</p>
									<p>선취골을 기록한 팀이 승리 팀이 될 것으로 예측하여 배팅을 하는 것을 말한다.</p>
									<p>이에 대한 결과는 다음과 같다:</p>
									<p>리드하고 있는 팀이 최종 승리– 선취골을 기록한 팀이 승리할 경우</p>
									<p>리드하고 있는 팀이 최종 패배– 선취골을 기록한 팀이 패배할 경우</p>
									<p>무승부 –  1-1, 2-2 등과 같이 득점이 발생된 상황에서 무승부로 경기가 종료될 경우 (단, 0-0 무승부는 제외됨)</p>
									<p>무득점 무승부 경기- 0-0 으로 경기가 종료될 경우.</p>
									<br><br>
									<p>45. 어느 하프에서 첫 골이 나올 것인가?</p>
									<p>심판이 인정한 골만이 유효하다.</p>
									<br><br>
									<p>46. 매치의 추가시간</p>
									<p>추가시간이 부여된 결과는4th official(4번째 공식적으로) 로 나타나는 시간을 기준으로 산출되며 실제로 플레이 하였던 시간은 포함되지 않는다.</p>
									<br><br>
									<p>47. 매치에서 퇴장선수가 나올 것인가?</p>
									<p>매치에서 퇴장한 선수가 나올 것인지를 예측하는 것을 말한다.  단, 필드에서 플레이를 한 선수들만이 적용된다. 선수 이외의 감독, 코치 및 스텝의 퇴장은 결과 계산시 포함되지 않는다. 심판의 경기종료 휘슬이 울린 후 퇴장은 고려대상이 되지 않는다.</p>
									<br><br>
									<p>48. 어느 팀에서 먼저 교체 선수를 투입할 것인가?</p>
									<p>어느 팀에서 먼저 교체선수를 투입할 것인지를 예측하여 배팅하는 것을 말한다. 경기 중 교체선수가 없을 경우 이 포지션에 대한 배팅은 무효처리되고 “교체선수가 없음-승리”로 간주된다. 만약 양 팀이 동시에 교체선수를 투입하였을 경우 이에 대한 배팅은 무효처리되고 “양 팀 동시에 교체선수 투입-승리”로 계산된다. 교체선수가 투입될 경우 경기는 일시 중단된다.</p>
									<br><br>
									<p>49. 어느 팀이 보다 좋은 성적(상위 순위)을 거둘 것인가?</p>
									<p>같은 그룹(조)의 경기에서 어느 팀이 상위 순위를 기록할 것이지 예측하는 것을 뜻한다. 양 팀이 플레이오프 전을 펼칠 경우, “who will finish higher”에 대한 배팅은 무효처리되고 환불된다. 양 팀이 월드컵 토너먼트에서 같은 그룹에 속해있을 경우 그 그룹에서 상위에 위치해 있는 팀이 승리한 팀으로 간주된다. 만약 양 팀이 그들의 그룹에서 동일한 성적을 기록할 경우 배팅은 무효처리되고 환불된다.</p>
									<br><br>
									<p>50. 토너먼트의 득점왕</p>
									<p>소속 팀 플레이어와 관계없이 단지 토너먼트에게서 기록한 스코어만이 고려된다. 플레이어 바로 옆에 팀 명이 명시되어 있다. 자책골은 해당되지 않는다. 만약 2명 이상의 플레이어가 최다골을 기록할 경우에는 결과는 배당을 최다골 기록한 선수들 수로 나누어서 산출된다. 매치의 전반전 결과에 대한 배팅은 추가 시간을 포함해서 45분이 경과된 후 기록된  결과에 따라서 엄격하게 산출된다.</p>
									<p>전반전이 종료되지 않을 경우 모든 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>51.  결과 </p>
									<p>W1 (양 팀 모두 득점을 할 것인가?– Yes) – 매치에서 양 팀 모두 득점에 성공하고 team-1이 승리할 경우 배팅에서 승리한 것으로 간주된다.</p>
									<p>W1 (양 팀 모두 득점을 할 것인가?– No) – 단지 팀-1이 득점을 하여 승리하고 경기가 종료될 때 까지 추가 득점이 발생되지 않을 경우 베티에서 승리한 것으로 간주된다. </p>
									<p>X (양 팀 모두 득점을 할 것인가?) –  무득점 무승부의 결과가 나올 경우 배팅에서 승리한 것으로 간주된다. </p>
									<p>W2 (양 팀 모두 득점을 할 것인가?– Yes) –양 팀 모두 득점을 기록하고 team-2가 승리할 경우</p>
									<p>W1 (양 팀 모두 득점을 할 것인가?– No) –팀-2가 승리하고 경기가 종료될 때 까지 득점이 나오지 않을 경우</p>
									<br><br>
									<p>52. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>야구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 동일한 팀들이 하루에 두 경기를 하였지만 이에 대해 단지 한 경기로만 간주하였을 경우 경기 결과는 첫 번째 경기를 기준으로 삼는다. </p>
									<br><br>
									<p>b. 경기가 연기되거나 취소된 후 15시간 이내에 재개되지 않을 경우 그 이벤트에 걸었던 배팅 금액은 고객에게 환불된다.</p>
									<br><br>
									<p>c. 만약 경기가 15시간 이상 동안 중단될 될 경우, 모든 배팅금은 환불 처리 된다. 경기가 15시간 이내에 종료될 경우 모든 배팅은 그대로 인정된다.</p>
									<br><br>
									<p>d. 별도의 언급이 없는 한, 승인된 모든 배팅은 추가 이닝을 포함해서 공식 웹사이트를 참조하여 산출된다. 무승부 경기가 발생되어 무승부를 포함한 승무패에 배팅한 경우를 제외하고 배팅금액은 환불처리 된다..</p>
									<br><br>
									<p>e. 정규 경기시간이 종료되기 전에 경기가 중단될 경우 5이닝(홈팀이 4 ½ 이닝까지 리드를 할 경우) 종료 후 결과가 공식결과로 간주된다. 마지막 이닝 종료 후 더 많은 득점을 올린 팀을 승리 팀으로 간주한다. (홈팀이 리드하거나 이닝(초)에 경기가 종료되지 않을 경우에). 만약 모든 배팅에 대하여 여기에 명시된 내용과 상반되게 경기가 일찍 중단될 경우 특별한 사유를 제외하고 환불이 되어야 한다.</p>
									<p>f.특정 지역 규정 추가</p>
									<p>일본( 일본 베이스볼 프로페셔널 이하 – NBP), 한국(한국 베이스볼 단체 이하 – KBO,KBL)의 모든 경기들은 중단되었거나 중단된 이후 재게되지 않는 경우, 경기 시작전에 취소 되는 경우는 위의 a,b,c,d,e의 조항에 관계없이 배팅금은 즉시 반환된다.</p>
									<p>별도 언급이 없는 한, 이곳에 명시된 모든 규정은 모든 배팅에 그대로 적용된다.</p>
									<br><br>
									<p>예외 규정은 아래와 같다:</p>
									<br><br>
									<p>“라이브 배팅”.</p>
									<br><br>
									<p>결과를 산출하기 위해 경기는 전체 이닝 동안 진행되어야 한다. 만약 경기가 중단되면 이 게임에 대한 모든 배팅은 무효가 되고 배팅 금액은 환불된다. 단, 경기 중단이 특별한 사유 때문에 발생될 경우 중단된 시점까지 경기 결과를 기준으로 승자에 대한 지불금액이 산출된다.</p>
									<br><br>
									<p>오버/ 언더, 많은/적은 득점+ 스트라이크+ 실책, 핸디캡.</p>
									<p>배팅은 공식 9이닝 종료 후 산출된다. (홈팀이 리드하고 있을 경우8 ½이닝 까지를 기준으로 한다). 만약 경기 승패를 가리기 위한 연장전이 필요할 경우 공식 스코어의 최종 결과를 기준으로 산출된다. 만약 경기가 조기에 종료 될경우 모든 경기의 결과는 공식적인 기관의 발표에 의한 결과를 기반으로 처리 된다.(협회 기준 공식 결과가 팀의 승자를 확정지을시 모든 배팅은 인정되고 공식결과로 인정된 점수를 기준으로 결과처리가 된다.)</p>
									<br><br>
									<p>게임 “호스트 – 게스트.” (홈팀-원정팀)</p>
									<p>하루 한 경기와 현 라인에 공지된 경기들이 게임으로 인정된다. 최소한 8.5에서 9이닝까지 경기가 완료되지 않을 경우, 배팅 금액은 환불된다. 결과 계산은 홈팀과 원정 팀이 기록한 포인트 합계로 결정된다.</p>
									<br><br>
									<p>f. 야구 배팅에 대한 항목들은 다음과 같다:</p>
									<br><br>
									<p>1. 승리팀(승자).</p>
									<p>경기 결과를 예측하는 것으로 결과 산출시 추가이닝도 포함된다.</p>
									<br><br>
									<p>2. 오버/언더</p>
									<p>경기 결과에 대하여, 토탈 포인트 스코어가 토탈 결과와 같을 경우,  배팅은 환불된다. 개인, 팀 또는 플레이어에게 동일하게 적용된다. 추가 이닝(연장전)을 포함된 결과가 인정된다.</p>
									<br><br>
									<p>3. 핸디캡.</p>
									<p>만약 단지 2가지 옵션의 핸디캡(핸디캡-1 또는 핸디캡-2, 무승부 옵션은 없음)만 있고 무승부가 발생되었을 경우 환불이 된다. 결과는 9이닝 종료 후 공식 스코어를 기준으로 산출된다. (만약 홈팀이 리드했을 경우는8 ½이닝 까지). 만약 경기 승패를 결정하기 위한 연장전이 필요할 경우, 배팅은 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우, 모든 배팅은 무효처리 된다.  예외: 어느 한 팀의 일방적인 이탈로 인해 경기가 종료될 경우 이 건에 대한 모든 배팅은 유효하다. 무승부일 경우 핸디캡을 고려해서 환불조치 된다. (배팅이 등록된 시간과는 관계가 없다)</p>
									<br><br>
									<p>4. 오버/언더 점수(특정 팀)</p>
									<p>팀이 기록한 포인트 스코어 수치가 명시된 한도보다 많거나 또는 적은지에 대해 예측을 한다. 만약 경기결과의 토탈 포인트 수가 결과 합계와 같을 경우, 배팅 금액은 환불된다. 배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(홈팀이 리드할 경우는8 ½ 이닝까지). 경기 승패를 결정하기 위한 연장전이 필요할 경우 최종 공식 스코어를 기준으로 배팅이 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다.</p>
									<br><br>
									<p>5. 많은/적은 득점 + 스트라이크 /범프(Bumps)/+실책.</p>
									<p>양팀에서 기록한 경기 득점, 스트라이크 실책이 명시된 한도보다 많은지 아니면 적은지를 예측하여 배팅하는 것을 말한다. 경기 결과의 득점+스트라이크+실책의 총 수치가 토탈 결과와 같을 경우 배팅금은 환불된다. 계산은 각 토너먼트의 공식 규제기관 또는 연맹의 공식 기록에 의거하여 결정된다. 배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(만약 홈팀이 리드하고 있을 경우8 ½ 이닝까지를 그 기준으로 한다). 경기 승패를 결정하기 위해 연장전이 필요할 경우 배팅은 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다.</p>
									<br><br>
									<p>6. 득점+스트라이크+/범프(Bumps)+ 실책의 합계가 홀 또는 짝인지?</p>
									<p>양 팀이 기록한 득점, 스트라이크 그리고 실책의 합계가 홀 또는 짝인지를 예측하는 배팅을 말한다.</p>
									<p>이에 대한 계산은 각 토너먼트의 규제기관 또는 연맹의 공식 기록을 기준으로 산출된다. 배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(만약 홈팀이 리드하고 있을 경우8 ½ 이닝까지를 그 기준으로 한다). 경기 승패를 결정하기 위해 연장전이 필요할 경우 배팅은 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다. 만약 결과가 0일 경우, 결과는 “짝”으로 계산된다.</p>
									<br><br>
									<p>7.토탈 짝/홀</p>
									<p>배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(만약 홈팀이 리드하고 있을 경우8 ½ 이닝까지를 그 기준으로 한다). 경기 승패를 결정하기 위해 연장전이 필요할 경우 배팅은 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다. 만약 결과가 “0-0”일 경우 이에 대한 모든 배팅은 “짝”으로 계산된다.</p>
									<br><br>
									<p>8. 어느 팀이 첫 득점을 올릴 것인가?</p>
									<p>만약 결과가 “0-0”으로 나올 경우, 이에 대한 모든 배팅 금액은 환불된다.</p>
									<br><br>
									<p>9. 어느 팀이 마지막 득점을 올릴 것인가?</p>
									<p>만약 결과가 “0-0”으로 나올 경우, 이에 대한 모든 배팅 금액은 환불된다.</p>
									<br><br>
									<p>10. 어느 팀이 다음 득점을 기록할 것인가?</p>
									<p>경기에서 그 다음 득점이 발생되지 않을 경우 (경기가 중단될 경우 이를 포함해서), 이에 대한 배팅은 환불된다. 다음 득점이 발생된 후 경기가 중단될 경우 이에 대한 모든 배팅은 그대로 유효하다.</p>
									<br><br>
									<p>11. 이닝(회) 1:  0.5 이상 또는 이하.</p>
									<p>결과를 산출 하기 위해서 1이닝이 반드시 완료되어야 한다.</p>
									<br><br>
									<p>12. 1이닝 결과</p>
									<p>결과를 산출 하기 위해서 1이닝이 반드시 완료되어야 한다.</p>
									<br><br>
									<p>13. 첫 홈런의 유형</p>
									<p>홈런이 솔로(1포인트), 2포인트, 3포인트, 그랜드 슬램(4포인트) 또는 전체 경기에서 홈런이 없을 경우 이러한 홈런 형태를 예측하여 배팅하는 것을 말한다. 배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(만약 홈팀이 리드하고 있을 경우8 ½ 이닝까지를 그 기준으로 한다). 경기 승패를 결정하기 위해 연장전이 필요할 경우 배팅은 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다.</p>
									<br><br>
									<p>14. 가장 많은 득점이 발생되는 이닝(회)은?</p>
									<p>어느 이닝에서 가장 많은 득점이 발생될 것인지 예측하는 것을 뜻한다:  1st 4.5이닝(5회 초 포함) 또는 2nd 5이닝 (5회 초 이후 (게임 종료를 포함하여 5회 말 부터), 또는 무승부 발생 유무.  연장전에 돌입하여 추가 이닝이 발생될 경우 결과는 5회 초 종료 후부터 추가 이닝의 결과까지를 포함한다.</p>
									<br><br>
									<p>15. 첫 득점을 올린 팀이 경기에서 승리할 것인가?</p>
									<p>아래의 결과들을 예측하여 배팅 할 수 있다.</p>
									<p>“예스” – 첫 득점을 올린 팀이 경기에 승리할 것으로 예측하고 배팅을 하는 것</p>
									<p>“노” – 첫 득점을 올린 팀이 경기에 패배할 것으로 예측하고 배팅을 하는 것</p>
									<p>경기가 무승부로 종료되면 이에 대한 모든 배팅은 환불된다. 공식 경기 시간 이전에 경기가 종료될 경우 5이닝(만약 홈팀이 리드하고 있을 경우4 ½ 이닝까지) 이후 까지 경기가 진행되어야 배팅이 유효하다.</p>
									<p>최종 이닝 종료 후 가장 많은 득점을 기록한 팀이 승리 팀이 된다 (만약 경기가 홈팀이 리드한 상태로 이닝 “초”에 종료될 경우 경기의 승자는 홈팀이 된다)</p>
									<br><br>
									<p>16. 다음 이닝의 첫 투구의 결과가 볼 또는 다른 어떤 결과가 발생될 것인가?</p>
									<p>첫 투구가 볼, 스트라이크, 득점, 홈런 및 실책 등 어떤 결과를 야기시길 것인지 예측하는 것을 말한다.</p>
									<br><br>
									<p>17. 어느 팀이 가장 먼저 3포인트를 기록할 것인가?</p>
									<p>배팅은 9이닝 종료 후 공식 스코어를 기준으로 산출된다.(만약 홈팀이 리드하고 있을 경우8 ½ 이닝까지를 그 기준으로 한다). 경기 승패를 결정하기 위해 연장전이 필요할 경우 결과는 최종 공식 스코어를 기준으로 산출된다. 만약 경기가 조기에 종료될 경우 모든 배팅은 무효가 된다. (예외) 단, 경기가 중단될 때까지 어느 한 팀이 3득점을 기록할 경우는 그대로 인정된다.</p>
									<br><br>
									<p>18. 게임 “홈– 원정.”</p>
									<p>당일 한 경기를 기준으로 한다. 결과 산출에 대하여 최소8.5-9 이닝의 경기가  성립되지 않을 경우 환불 처리된다. 결과산출은 홈팀과 원정 팀이 기록한 토탈 포인트를 기준으로 계산된다. 무승부가 발생될 경우, 승자에 대한 배팅은 환불이 이루어진다.</p>
									<br><br>
									<p>19.  해당 리그(지구) 우승팀.</p>
									<p>어떠한 사유로 인해 시즌이 조기에 종료될 경우 각각의 리그 주체 측에 의하여 우승팀이 결정되고 이를 기준으로 모든 배팅이 산출된다. </p>
									<br><br>
									<p>20. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>농구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>매치 승리 팀 예측에 대한 배팅에는 정규시간을 기준으로 “무승부”를 옵션으로 포함한 배팅은 연장전은 해당되지 않는다.</p>
									<br><br>
									<p>16.1.1에 명시된 경우를 제외하고, 이 매치에 대한 모든 배팅에 대하여 경기가 정규시간 종료 전에 중단되거나 경기가 중단된 시점까지 기준으로 그 결과를 명확히 정의해주지 않을 경우 또는 경기중단 후  30시간이 경과해도 경기가 다시 재개되지 않을 경우 모든 배팅은 무효 처리되고 환불된다. </p>
									<br><br>
									<p>경기 종료 전 5분 이하일때 경기가 중단될 경우 이 건에 대한 모든 배팅은 유효하다. 정규경기시간이 종료되기 전 5분 이상이 남은시 경기가 중단되고 30시간 이내에 경기가 다시 시작되지 않은 상태에서,  경기 중단시점까지 명확하게 경기 결과를 정의해주지 않을 경우,  이 건에 대한 모든 배팅은 무효이고 환불된다. 단, 경기중단 시점까지 주체 측에 의해 경기결과에 대해 명확한 판정이 나올 경우 배팅은 유효하고 그 이외의 상황에 대해서는 모두 무효처리 된다.</p>
									<br><br>
									<p>15시간이 경과해도 경기가 시작되지 않고 지연될 경우 이 건에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>후반전(second half)과 4쿼터의 배팅결과는 연장전을 제외하고 함께 추가된다.</p>
									<br><br>
									<p>토탈 점수가 토탈 결과와 동일할 경우, 배팅금은 반환된다. 마찬가지로, 배팅 배당 / 하프(전반전 또는 후반전) / 쿼터, 플레이어 경기기록 비교 / 정확한 핸디캡 값에 대한 옵션이 있는 다른 포지션(배팅 위치) / 토탈 뿐만 아니라, 쿼터 토탈, 하프매치, 팀 또는 플레이어의 개별적인 토탈[팀 또는 플레이어가 기록한 리바운드, 도움, 파울, 블록슛, 가로채기 등의 내역에 대한 이상/이하를 예측하여 배팅을 하는 것을 포함]에 대해서도 동일적용된다.</p>
									<br><br>
									<p>플레이어의 경기기록(리바운드, 도움, 파울, 블록슛,  grasp changes 등의 이상/이하)에 대한 배팅의 경우, 만약 지정된 선수가 경기에 출전하지 않을 경우 배팅금은 반환된다.</p>
									<br><br>
									<p>토탈 플레이어 / 플레이어의 경기기록 비교에 대한 배팅은 별도의 언급이 없을 경우 연장전을 포함해서 인정된다.</p>
									<br><br>
									<p>홈경기와 원정경기(Home-Away)는 당일 라인에 공지된 것만을 인정한다. 라인에 공지된 경기들 중 어느 한 경기 또는 일부 경기가 연기 또는 취소될 경우 이 건에 대한 배팅은 무효 처리되고 환불된다.</p>
									<br><br>
									<p>토너먼트 규정에 의거하여, 만약 무승부가 발생된 후 연장전에 들어가지 않을 경우 승자에 대한 배팅은 오즈 1로서 카운트된다. (즉, 오버타임이 인정되지 않은 조건에서 무승부가 나올 경우). 반면에 다른 모든 배팅들(오즈, 토탈, 등등)은 매치의 실제 스코어에 따라서 카운트 된다.</p>
									<br><br>
									<p>무승부일 경우 연장전에 돌입하여 최종 승리 팀을 결정할 수 있는 토너먼트 규정이 존재할 경우 모든 배팅은 이 규정에 순응하여 그대로 카운트된다.</p>
									<br><br>
									<p>농구 배팅에 대하여 아래와 같은 항목들이 존재한다:</p>
									<br><br>
									<p>1. 승리 팀.</p>
									<p>매치 결과를 예측하여 배팅하는 것을 말한다. 배팅 옵션이 라인 상에 “팀-1”, “팀-2 “ 그리고 “무승부”로 나와 있을 경우 모든 배팅은 연장전을 제외한 정규시간을 기준으로 인정된다. 반면에, 다른 별도의 언급이 있을 경우에만 연장전이 인정된다.</p>
									<br><br>
									<p>2. 토탈</p>
									<p>토탈 스코어가 토탈 결과와 동일할 경우, 배팅금 환불 된다. 마찬가지로, 각각의 팀 또는 플레이어에게도 그대로 적용된다.</p>
									<br><br>
									<p>3. 핸디캡.</p>
									<p>핸디캡이 인정되는 상황에서 무승부가 발생될 경우 배팅 금액은 환불된다. ( 배팅을 위해 제시된 매치 기간과는 관계없음)</p>
									<br><br>
									<p>4.연장전이 발생될 것인가?</p>
									<p>연장전에서 경기가 중단되더라도 이 건에 대한 배팅결과는 유효하다.</p>
									<br><br>
									<p>5. 개별적 토탈오버 언더 (특별하게 지정된 팀)</p>
									<p>이 팀이 기록한 점수가 공지된 한도보다 이상 또는 이하인지를 예측하여 배팅하는 것을 말한다. 토탈 점수가 결과와 같을 경우, 배팅금은 환불 된다.</p>
									<br><br>
									<p>6. 어느 하프(전반전 또는 후반전)에서 가장 많은 포인트가 나올 것인가?</p>
									<p>후반전 스코어에는 연장전의 점수가 인정되지 않고 정규경기시간만 인정된다.</p>
									<br><br>
									<p>7. 어느 쿼터에서 가장 많은 점수가 발생될 것인가?</p>
									<p>이 건의 배팅 결과를 계산하기 위해서는 4쿼터까지 모든 쿼터의 경기가 종료되어야만 하며 연장전은 포함되지 않는다.</p>
									<br><br>
									<p>8. 몇 점 차이로 승리 팀이 결정될 것인가?</p>
									<p>경기가 중단되고 24시간 이내에 재개되지 않을 경우 이 건에 대한 배팅은 무효처리된다.</p>
									<br><br>
									<p>9. 토탈 홀/짝.</p>
									<p>매치 토탈 또는 기간(하프 매치 / 쿼터매치 / 또는 전 매치)의 경기 결과가 홀 또는 짝인지 예측하는 것을 말한다.</p>
									<br><br>
									<p>10.  오버 언더: 리바운드(도움/블록) (지정된 팀)</p>
									<p>각 팀 플레이어들이 기록한 리바운드(도움/블록) 숫자가 공지된 한도 이상 또는 이하인지 예측하여 배팅하는 것을 말한다. 매치에 불참 / 실격 / 각 플레이어들의 부상은 이 건의 결과를 산출하는데 영향을 받지 않는다. 별도 언급이 없을 경우, 이 건에 대한 결과는 연장전을 고려하여 승인된다.</p>
									<br><br>
									<p>11. 지정된 플레이어가 기록한 리바운드(도움/블록/ grasp changes/포인트/블록슛)의 오버 언더.</p>
									<p>플레이어가 기록한 리바운드(도움/블록/grasp changes/포인트/블록슛)의 수치를 예측하여 배팅하는 것을 말한다. 간략하게 표시된 팀 명은 정보의 목적으로 플레이어 바로 옆에 명확히 표시되어야 한다. 약칭으로 표시된 플레이어 이름이 정확하지 않아도 결과 산출에 영향을 주지 않고 배팅 및 결과는 그대로 유효하다. 지정된 플레이어가 출전하지 않을 경우 환불된다. 기타 별도의 언급이 없는 한, 이 건에 대한 결과는 연장전을 포함해서 승인된다.</p>
									<br><br>
									<p>12. 어느 팀이 더 많은 리바운드(grasp changes/블록)를 기록할 것인가?</p>
									<p>어느 한 팀의 경기가 연기 또는 중단되어 24시간 이내에 재개되지 않을 경우 배팅금액은 환불 된다.</p>
									<p>토너먼트 라인에 명시되어 있는 매치에 대한 비교치는 이월된다. 이 포지션에 대한 배팅 결과는 연장전을 포함하여 인정된다. 플레이어가 같은 수의 리바운드(도움/블록/grasp changes/포인트/블록슛)를 기록할 경우, 이 포지션에 대한 모든 배팅은 환불 된다. 별도의 언급이 없는 한, 이 포지션에 대한 배팅 결과는 그대로 인정된다.</p>
									<br><br>
									<p>13. 어느 팀이 10점수를 먼저 달성할 것인가 (지정된 쿼터 / 지정된 하프 매치)</p>
									<p>어느 팀이 먼저 10(20)포인트를 먼저 달성할 것인지 예측하여 배팅하는 것을 뜻한다. (매치에서 / 쿼터에서 / 하프(1,2쿼터 또는 3,4 쿼터)</p>
									<p>쿼터가 적용된 경우에서는 연장전이 인정되지 않는다. 지정된 경기 범위에서 특정 포인트 수치가 스코어로 인정되지 않을 경우, 이 포지션에 대한 모든 배팅은 환불 된다.</p>
									<br><br>
									<p>14. 그룹 승리 팀 (컨퍼런스/지구).</p>
									<p>이 포지션에 대해 결과를 산출하기 위해서 모든 그룹 매치(즉, 컨퍼런스/지구)의 경기가 펼쳐져야만 한다. 그렇지 않을 경우, 이 포지션에 대한 배팅은 환불 된다</p>
									<br><br>
									<p>15. 플레이오프 시리즈의 승리 팀(베스트 3개 팀 /베스트 5개 팀 / 베스트 7개 팀).</p>
									<p>정규 경기시간 동안 매치가 진행되지 않을 경우, 이 포지션에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>16. 토너먼트 승리 팀 .</p>
									<p>한 팀 이상이 토너먼트 승리 팀으로 인정될 경우, 이 팀에 대한 오즈는 승리 팀 숫자로 나누어져서 계산된다.  </p>
									<br><br>
									<p>17. 첫 번째 퇴장 .</p>
									<p>5개 또는 6개 파울(각 챔피언십 규정에 의거하여 퇴장관련 파울 수가 결정됨)을 범하여 퇴장을 당했을 경우 이에 해당되는 플레이어가 기록한 포인트는 그대로 인정된다.</p>
									<br><br>
									<p>18. 다음 라운드로 진출.</p>
									<p>지정된 라운드의 플레이오프 시리즈 마지막 매치가 종료된 후 바로 결정 되어지는 결과에 의해 배팅 결과가 산출되며 차후 사법적 또는 징계결정 등이 발표되어서 이미 결정된 결과를 뒤집지 못한다.</p>
									<p>어떤 사유 (실격, 참가 거부) 때문에 이 라운드에 지정된 팀이 참가할 수 없게 될 경우, 상대 팀이 승리 팀으로 간주되며 다음 라운드로 진출할 수 있으며 모든 결과는 유효하다.</p>
									<br><br>
									<p>19. 어느 팀이 선취 득점을 기록할 것인가? (쿼터/하프)</p>
									<p>어느 팀이 지정된 매치의 범위 내에서 먼저 선취점을 기록할 것인지 예측하여 배팅하는 것을 말한다.</p>
									<br><br>
									<p>20. 어느 팀이 마지막 득점을 기록할 것인가? (쿼터/하프)</p>
									<p>어느 팀이 지정된 매치의 범위 내에서 마지막 득점을 기록할 것인지 예측하여 배팅하는 것을 말한다. 만약 매치(지정된 쿼터/하프)가 중단된 후 24시간 이내에 재개되지 않을 경우 이 포지션에 대한 배팅은 무효처리 된다.</p>
									<br><br>
									<p>21.어떤 방식으로  첫 포인트가 기록될 것인가? (2점슛, 3점슛 또는 자유투)</p>
									<p>심판이 인정한 스코어만 득점으로 공식 인정된다.</p>
									<br><br>
									<p>22. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>

								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>미식 축구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 연장전은 모든 배팅 결과에 포함이 된다. 그러나 첫 하프게임, 점수 차이 그리고 4쿼터의 결과는 포함되지 않는다. </p>
									<br><br>
									<p>b.  경기가 중단된 시점까지 명확한 결과가 나오는 경우를 제외하고 15시간 이상 동안 경기가 중단될 경우 환불된다.</p>
									<br><br>
									<p>c.  30시간이 경과했지만 경기가 재개되지 않을 경우 모든 배팅은 환불된다.</p>
									<br><br>
									<p>d. 미식축구에 대한 배팅 내역은 아래와 같다:</p>
									<br><br>
									<p>1.승리 팀.</p>
									<p>경기 결과를 예측한 것. 결과산출 시 연장전은 포함된다.</p>
									<br><br>
									<p>2. 오버,언더.</p>
									<p>스코어 수치가 토탈 결과와 같을 경우 배팅은 환불 된다. 각각의 팀 또는 플레이어에게도 동일하게 적용된다. 연장전도 포함된다..</p>
									<br><br>
									<p>3. 핸디캡.</p>
									<p>핸디캡은 2가지 옵션(A팀 승리 / B팀 승리, 무승부는 인정되지 않음). 무승부가 발생될 경우 배팅은 환불 된다.</p>
									<br><br>
									<p>4. 전반전/매치</p>
									<p>배팅에서 승리하기 위해서 전반전과 매치 결과를 정확히 예측해야 한다. 연장전은 포함되지 않는다.</p>
									<br><br>
									<p>5. 쿼터별 결과</p>
									<p>핸디캡이 적용된 배팅의 승자 또는 쿼터에 대한 토탈 점수 수치를 예측한 결과가 적용된다. 쿼터 종료 후 경기에서 승리한 팀은 결과에서 제외고 연장전은 인정되지 않는다.</p>
									<br><br>
									<p>6. 첫 / 마지막 터치다운 스코어.</p>
									<p>첫 터치다운 또는 마지막 터치다운을 각각 예측하여 배팅을 하는 것을 말한다. 배팅이 유효하기 위해선 최소한 [first second] 이상으로 플레이를 해야 배팅이 유효하고 그렇지 않을 경우 배팅은 무효이다.</p>
									<br><br>
									<p>7. 전반전(First Half) 배팅.</p>
									<p>전반전(First Half)의 결과를 예측하여 배팅을 하는 것으로서 2쿼터 종료되기 전 경기가 중단될 경우 배팅은 무효이다.</p>
									<br><br>
									<p>8. 첫 번째 또는 그 다음의 효과적인 플레이(First / Next efficient Play).</p>
									<p>첫 번째 또는 그 다음 효과적인 엑션이나 스코어를 위해 어떤 플레이를 펼칠 것인지 예측하여 배팅하는 것을 말한다/: (gate또는 safety에 대한 터치다운 또는 골을 말함). 만약 경기가 중단되거나 터치다운 종료 전 중단될 경우, (gate 또는 saftety에 대한 골), 배팅은 무효이다.</p>
									<br><br>
									<p>9. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>오스트레일리아(호주) 풋볼</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 연장전은 모든 배팅 결과에 포함이 된다. 그러나 첫 하프게임, 포인트 차이 그리고 4쿼터의 결과는 포함되지 않는다.</p>
									<br><br>
									<p>b.15시간 이상 경기가 중단될 경우, 경기 중단시점까지 명확하게 정의된 결과를 제외하고 모든 배팅은 환불처리 된다.</p>
									<br><br>
									<p>c.30시간 이상 경기 시작시간이 지연될 경우 모든 배팅은 환불된다.</p>
									<br><br>
									<p>d.호주 풋볼에 대한 배팅 규정들은 아래와 같다:</p>
									<br><br>
									<p>1. 승리팀.</p>
									<p>연장전을 포함해서 매치 결과를 예측하여 배팅하는 것을 말한다.</p>
									<br><br>
									<p>2. 토탈</p>
									<p>경기의 토탈 스코어 결과가 토탈 결과와 같을 경우에 환불처리 된다. 팀 또는 플레이어의 개별적인 토탈도 동일하게 적용된다.</p>
									<br><br>
									<p>3. 핸디캡.</p>
									<p>만약 핸디캡이 단지 2가지 옵션(승리-1, 승리-2, / 무승부는 해당되지 않음)으로만 존재할 경우 무승부가 날 경우에는 해당되지 않는다. (만약 무승부일 경우에는 배팅되었던 경기 기간과는 무관함)</p>
									<br><br>
									<p>4. 전반전(First Half) / 매치.</p>
									<p>전반전(First Half) / 매치의 경기 결과를 예측하여 배팅을 하는 것으로 연장전은 해당되지 않는다.</p>
									<br><br>
									<p>5. 쿼터에 대한 결과</p>
									<p>매치 쿼터에 해당되는 승자, 핸디캡 적용 배팅 승자 또는 토탈 점수에 대해서 배팅 결과가 적용된다.</p>
									<br><br>
									<p>6. 전반전(first half)에 대한 배팅.</p>
									<p>전반전(first half)의 승리 팀을 예측하여 배팅하는 것을 뜻하는 것으로서 2쿼터 종료 전 경기가 중단될 경우 배팅은 무효처리 된다.</p>
									<br><br>
									<p>7. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>비치발리볼</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>게임이 시작되어 30시간 이상 중단될 경우,  경기 중단시점까지 명확하게 내려진 결과를 제외하고 모든 배팅은 무효이다.</p>
									<br><br>
									<p>경기 시작 전 30시간 이내에 경기가 연기되었을 경우 이 매치에 대한 모든 배팅은 그대로 유효하다. 그렇지 않을 경우 이 매치에 대한 배팅은 환불 된다.</p>
									<br><br>
									<p>경기 장소가 변경되었을 지라도 모든 배팅은 그대로 유효하다.</p>
									<br><br>
									<p>양 팀의 출전 플레이가 경기 시작 전 변경되었을 경우 모든 배팅은 무효처리 되고 환불된다.</p>
									<br><br>
									<p>심판의 판정으로 인해 포인트 감소가 어느 한 팀에 발생될 경우, 심판의 판정을 기준으로 배팅이 인정된다. 어느 팀이 첫 스코어(5/10/15/20 포인트)와 다음 어시스트를 먼저 달성할 것인지에 대한 라이브 방식의 배팅결과는 별도로 적용된다. 어느 팀이 먼저 다음 어시스트를 달성할 것인지를 포함해서 어느 팀이 첫 스코어(5/10/15/20 포인트) 먼저 기록할 것인지에 대한 라이브 방식의 배팅결과는 예외적으로 적용된다. 이러한 경우 배팅결과 산출은 특정 포인트 수치를 먼저 기록한 팀을 기준으로 계산되며 만약 요청된 점수를 어느 한 팀이 먼저 달성한 다음 그 후 심판이 다른 판정을 하더라도 초기에 결정된 결과에 영향을 미치지 않는다.  어느 팀이 다음 어시스트를 먼저 기록할 것인지에 대한 계산도 같은 방식으로 결정된다.</p>
									<br><br>
									<p>비치발리볼에 배팅에 대한 세부 항목들은 다음과 같다:</p>
									<br><br>
									<p>1. 승리 팀.</p>
									<p>매치의 결과를 예측하여 배팅하는 것</p>
									<br><br>
									<p>2. 오버 언더.</p>
									<p>경기의 토탈 스코어 결과가 토탈 결과와 같을 경우에 환불처리 된다. 팀 또는 플레이어의 개별적인 토탈 오버 언더도 동일하게 적용된다.</p>
									<br><br>
									<p>3. 개별적(각각의) 토탈  (지정된 팀).</p>
									<p>매치의 결과로서 팀의 토탈 점수 수치가 토탈 결과와 동일할 경우 배팅은 환불 된다.</p>
									<br><br>
									<p>4. 매치의 토탈 세트.</p>
									<p>어느 팀이 지정된 세트 수를 기준으로 그 이상 또는 이하의 세트 경기를 할 것인지 예측하여 배팅하는 것을 말한다.  만약 경기가 중단되고 다시 재개되지 않을 경우 이 포지션에 대한 배팅은은 환불 된다.</p>
									<br><br>
									<p>5. 어느 팀이 최초로 5(10/15) 포인트를 달성할 것인가?</p>
									<p>어느 한 팀이 최초로 지정된 포인트를 먼저 달성한 이후 심판의 결정으로 인해 이 팀의 포인트 감소되었을 경우 심판의 결정은 초기에 달성한 포인트 점수에 영향을 주지 못한다. </p>
									<br><br>
									<p>6. 총 몇 세트의 게임이 진행될 것인가?</p>
									<p>배팅결과 산출 시 실제 플레이 된 세트 수는 그대로 인정된다. 만약 경기가 중단되고 다시 시작되지 않을 경우, 이 포지션에 대한 배팅은 무효이고 환불되어야 한다.</p>
									<br><br>
									<p>7. 세트 핸디캡.</p>
									<br><br>
									<p>8. 세트에서 정확한 스코어.</p>
									<br><br>
									<p>9. 토너먼트 승자.</p>
									<p>만약 1개 이상의 팀이 토너먼트 승리 팀으로 인정될 경우, 팀에 대한 배당율은 승리 팀의 수로 나누어져서 계산된다.</p>
									<br><br>
									<p>10. 매치 “홀”/”짝” 토탈.</p>
									<br><br>
									<p>11. 세트  “홀”/”짝” 토탈.</p>
									<br><br>
									<p>12. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>복싱</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>어떠한 이유 때문에 경기가 열리지 않았고 경기일 이후 28일 이내에 경기가 열릴 경우 새로운 매치에 대하여 종전에 배팅 하였던 부분은 그대로 유효하다. 그러나 28일 이내에 경기가 열리지 않을 경우 모든 배팅은 무효 처리되고 환불된다.</p>
									<br><br>
									<p>경기 장소가 변경되었을지라도 모든 배팅은 여전히 유효하다.</p>
									<br><br>
									<p>첫 링 벨 소리가 울리면 경기가 시작된 것으로 간주된다.  “a win”이란 시합에서 상대 선수보다 포인트가 앞서거나, KG, TKO 또는 상대 선수의 실격/시합 포기 등의 상황이 발생되어 복싱 경기에서 승리하는 것을 의미한다..</p>
									<br><br>
									<p>“a prescheduled win”의 개념은 록아웃, 테크니칼 록아웃, 실격 또는 경기 포기를 뜻한다.</p>
									<br><br>
									<p>“a win on points”의 개념은 모든 라운드가 종료된 후 판정으로 승자를 결정하는 것을 뜻한다.</p>
									<br><br>
									<p>다음 라운드 링 벨 소리가 울렸지만 상대 선수가 링에 나오지 않을 경우 이전 라운드에 경기가 중단된 것으로 간주되며 경기를 포기한 선수는 패자로 간주된다.</p>
									<br><br>
									<p>예정된 라운드 횟수가 변경될지라도 해당 라운드 경기에 대한 모든 배팅은 그대로 유효하며 라운드 횟수에 대한 배팅은 환불 된다.</p>
									<br><br>
									<p>시합 출전이 예정된 어느 한 선수가 다른 선수로 변경되었을 경우, 이 매치에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>다음과 같은 포지션에 대하여 배팅 결과가 제공된다:</p>
									<br><br>
									<p>1. 매치의 승자.</p>
									<p>경기의 결과(양 선수 중 승자 또는 무승부 경기)를 예측하여 배팅을 하는 것을 말한다. 배팅은 링에서 발표된 공식 결과에 따라서 결정된다. (또한, 심판에 의해 포인트 변화가 발생될 수 있는 것도 포함)</p>
									<p>경기 결과 발표 후 차후 사법부 또는 주체 측에 의해 징계결정이 발표되더라도 한번 결정된 결과는 이 포지션의 배팅결과 산출에 영향을 끼치지 않는다. 만약 경기가 무승부로 끝나고 같은 무승부 게임이 제공되지 않을 경우, 이 포지션에 대한 모든 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>2. 매치에서 토탈 라운드.</p>
									<p>벨이 울린 후 다음 라운드에 복서가 출전을 하지 않을 경우 종전 라운드를 기준으로 상대 선수의 승리로 간주된다. 정규 라운드 회수가 변경될 경우 이 포지션에 대한 배팅 은 환불된다.  정규 라운드가 모두 종료되어야 매치가 인정된다.</p>
									<br><br>
									<p>3. 라운드에 대한 배팅.</p>
									<p>어떤 라운드에서 어느 복서가 승리할 것인지를 정의하는 것이 필요하다. 이 경우는 매치의 승리를 뜻하는 것이지 라운드의 승리를 말하는 것이 아니다. 마지막 라운드 종료 후 심판에 의해 최종 승자가 발표될 경우 마지막 라운드에 배팅것이 승리하는 것이다.</p>
									<br><br>
									<p>4. 지정된 라운드에서 녹다운(KO)이 발생될 것인가?</p>
									<p>다운 후 심판의 카운트에 의한 KO만이 인정된다. 슬립 다운 또는 이와 비슷한 상황은 인정되지 않는다.</p>
									<br><br>
									<p>5. 매치의 결과 .</p>
									<p>매치의 승자 뿐만 아니라 매치의 결과가 결정되는 것을 예측하는 것을 말한다. 가능한 옵션사항들은 다음과 같다:</p>
									<br><br>
									<p>-  넉아웃에 의한 플레이어-1 (플레이어-2)의 승리 (복서가 다운되어 심판이 10초를 카운트하는 동안 일어나지 못할 경우), 테크니컬 록아웃 (3번 다운을 당한 후 심판의 결정 또는 플레이어가 경기를 포기할 경우) 또는 실격</p>
									<p>-  심판의 판결에 의해 플레이어-1 (플레이어-2)의 승리 (정규 라운드 종료 후) 또는 심판의 테크니컬 판결 (포인트에 대한 조기 결정) 및 무승부</p>
									<br><br>
									<p>6. 매치의 승자  / 라운드 횟수</p>
									<p>어느 선수가 승리할 것인지 그리고 공식 라운드 이상 또는 이하로 경기가 진행될 것인지 예측하는 것을 말한다. 무승부가 날 경우, 이 포지션에 대한 모든 배팅은 무효이고 환불된다. 다음 라운드 벨이 울린 후 상대 복서가 링으로 나오지 않을 경우 경기는 이전 라운드를 기준으로 종료된 것으로 간주되고 경기를 포기한 선수는 패배한 것으로 간주된다. 규정에 의거해 공표된 지정 라운드 횟수가 변경될 경우 이 포지션에 대한 배팅 은 환불되며 정규 라운드가 모두 종료되어야 배팅이 승인된다.</p>
									<br><br>
									<p>7. 어느 복서가 어느 시점(시간)에 승리를 거둘 것인가?</p>
									<p>승리를 하는 범위뿐만 아니라 매치의 승자를 예측하는 것을 말한다. 무승부가 발생될 경우 이 포지션에 대한 모든 배팅은 무효이고 환불된다. 다음 라운드를 알리는 벨이 울렸지만 복서가 링에 오르지 않을 경우 종전 라운드까지 경기가 진행되었던 것을 간주되고 상대 복서가 승자로 인정된다. 규정 라운드 회수가 변경될 경우 이 포지션에 대한 배팅은 환불된다. 규정 라운드를 모두 완료해야만  배팅이 인정된다.</p>
									<br><br>
									<p>8. 공식적으로 지정된 라운드까지 경기가 지속될 것인지 ?</p>
									<p>모든 정규 라운드까지 시합이 지속될 것인지 또는 양 선수 중 어느 한 선수가 그전에 승리 할 것인지에 대하여 예측하는 것을 뜻한다. 매치 시작 전 규정 라운드 횟수의 변경이 있을 경우 이 포지션에 대한 배팅은환불된다. 기술적인 문제 때문에 경기가 중단 또는 취소될 경우 이 포지션에 대한 배팅금액은 모두 환불된다.</p>
									<br><br>
									<p>9. 어느 라운드에서 승자가 결정될 것인가?</p>
									<p>지정된 라운드에서 승자가 나올 것인지 또는 모든 규정 라운드가 종료된 후 심판의 판정에 의해 승자가 나올 것인지를 예측하는 것을 뜻한다. 다음 라운드의 링 벨이 울린 후 어느 한 복서가 출전을 포기할 경우 그 이전 라운드에서 경기가 종료된 것으로 간주된다.</p>
									<br><br>
									<p>10. (지정된 복서)가 넉다운 승리를 거둘 것인가?</p>
									<p>심판의 카운트에 의해 발생되는 넉다운 만이 인정된다. 슬립 다운 또는 이와 유사한 것은 인정되지 않는다.</p>
									<br><br>
									<p>11. (지정된 복서) 가 1분 이내에 승리를 할 수 있을 것인가?</p>
									<p>경기 시작 벨이 울린 후 59초를 포함해서 결정된다.</p>
									<br><br>
									<p>12. (지정된 복서가) 넉다운으로 승리할 것인지 또는 판정승을 거둘 것인가?</p>
									<p>가능한 옵션들은 아래와 같다:</p>
									<p>“Yes” – 지정된 복서가 최소 1회의 넉다운을 얻어내고 판정승을 거두는 경우</p>
									<p>“No” – 다른 상황일 경우</p>
									<p>심판이 카운트를 함으로써 넉다운이 인정된다. 슬립 다운 또는 이와 유사한 것은 인정되지 않는다. 기술적인 문제 때문에 경기가 중단 또는 취소될 경우 이 포지션에 대한 배팅금액은 모두 환불된다.</p>
									<br><br>
									<p>13.  어느 복서가 록다운 / 록아웃 / 테크니컬 록아웃을 달성할 것인가?</p>
									<p>이에 대한 결과들은 아래와 같다;</p>
									<p>“None” –양 복서 중 어느 누구도 넉다운 / 넉아웃 / 테크니칼 넉아웃을 얻어내지 못할 경우</p>
									<p>“Player 1″ – 플레이어-1 이 넉다운 / 넉아웃 / 테크니칼 넉아웃을 달성할 경우 (또는 넉다운과 넉아웃 / 넉다운과 테크니컬 넉아웃)</p>
									<p>“Player 2″ - 플레이어-2 가 넉다운 / 넉아웃 / 테크니칼 넉아웃을 달성할 경우 (또는 넉다운과 넉아웃 / 넉다운과 테크니컬 넉아웃)</p>
									<br><br>
									<p>14. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>배드민턴</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 경기 시작 전 출전 선수가 변경될 경우, 배팅은 환불된다.</p>
									<br><br>
									<p>b. 경기가 중단되어 연기될 경우 경기 중단시점에 특별히 결정되어 지는 결과를 제외하고 모든 배팅은 환불된다. 만약, 선수 부상 또는 실격 등으로 경기가 중단되어 다음 라운드로 경기가 연기될 경우 배팅 배팅은 유효하다.</p>
									<br><br>
									<p>c. 다음과 같은 배드민턴 배팅 방식은 그대로 인정된다:</p>
									<br><br>
									<p>1.경기의 승자</p>
									<p>경기 승자를 예측하는 것.</p>
									<br><br>
									<p>2. 세트 승자.</p>
									<p>세트 승자를 예측하는 것.</p>
									<br><br>
									<p>3. 토너먼트 승자.</p>
									<p>토너먼트 출전에 지정된 플레이어가 출전하지 않을 경우 이 플레이어에 대한 배팅 금액은 환불된다.</p>
									<br><br>
									<p>4. 누가 다음 피치(Pitch)에서 승리할 것인가?</p>
									<p>다음 피치(pitch)가 진해되지 않을 경우 이에 대한 모든 배팅금액은 환불된다.</p>
									<br><br>
									<p>5. 정확한 스코어 .</p>
									<p>경기가 중단되거나 정해진 세트를 모두 완료하지 않았을 경우 이에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>6. 이러한 방식의 배드민턴 경기에서 상기에 언급된 사항 이외에 다른 결과들이 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>밴디(Bandy)</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  모든 배팅은 규정 경기시간(90분- 전후반 45분씩 또는 30분씩 3회) 종료 후 경기 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>2.  최종 승리 팀을 결정하기 위한 연장전과 승부차기에 들어갔을 경우 이에 대한 배팅은 당연히 고려되어야 한다.</p>
									<br><br>
									<p>3.  만약 경기가 취소되거나 30시간 이상 연기되었을 경우 경기에 대한 모든 배팅은 1개의 오즈(odd of 1)만을 가진다.</p>
									<br><br>
									<p>4. 경기가 최소한 80분 동안 진행되었을 경우 이 경기는 유효한 것으로 간주된다. 경기가 재개되지 않고 15시간 이내에 다시 시작하지 않을 경우 경기가 중단된 시점까지의 결과를 기준으로 모든 배팅이 계산된다. 그 외의 경우는 모두 무효처리 된다.</p>
									<br><br>
									<p>5.  만약 팀이 “토너먼트의 결과를 기준으로 높은 스코어를 기록하지 못할 경우 포인트를 많이 기록한 팀이 승자가 된다. 만약 포인트가 같을 경우 최종 프로토콜(protocol) 데이터를 기준으로 배팅이 산출된다.</p>
									<br><br>
									<p>6.  북메이커 회사는 경기 동안에 발생된 부정확한 상황에 대해서 책임이 없다. 라이브와 라인에서 보여주는 데이터는 개략적인 것이다. 게임 규정에 대한 공식적인 자료를 참조해야 한다.</p>
									<br><br>
									<p>7.  매치에 대한 모든 배팅은 매치가 중단된 시점에 결정되어진 배팅 결과를 제외하고 그 이외의 경우에는 매치가 15시간 이상 지연되거나 취소될 경우 오즈 1을 갖는다. 경기 중단되기 이전까지 명확히 정의된 결과들, 퍼스트 타임(1st time) 결과 , 첫 골, 첫 골이 발생된 시간 등은 배팅을 계산하는 동안에 인정된다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3> 비치사커</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1. 모든 배팅은 별도의 언급이 없을 경우, 정규 경기시간 (총36분, 3 피어리드/각 12분씩)이 종료된 후 그 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>2. 경기 승리 팀, 다음 라운드 진출 팀 그리고 토너먼트 승리 팀에 대하여 연장전과 페널티킥 승부도 배팅을 산출하는데 포함된다.</p>
									<br><br>
									<p>3.  매치가 취소되거나 어떤 이유 때문에 30시간 이상 지연될 경우 그 포지션에 대한 배팅은 오즈 1을 갖는다.</p>
									<br><br>
									<p>4. 경기가 최소 30분 이상 진행되었을 경우 이 경기는 인정된다. 모든 배팅은 경기가 재개되지 않거나 15시간이 지나도 다시 시작되지 않을 경우 경기가 중단된 시점까지의 결과를 기준으로 산출된다. </p>
									<br><br>
									<p>5. 경기가 중단된 시점까지 배팅 결과가 결정되어지는 경우를 제외하고 15시간 이상 경기가 진행되지 않을 경우 이 매치에 대한 모든 배팅은 오즈 1로 계산된다. 경기 중단 시점 이전까지 명확히 정의된 결과, 전반전 결과 그리고 첫 골 시간 등은 배팅을 계산하는 동안에 인정되어야 한다.</p>
									<br><br>
									<p>6. 비치사커 경기의 결과에 대한 통계지표를 결정하는 기준에 대한 출처는http://www.beachsoccer.com를 방문하면 정보를 얻을 수 있다</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>체스</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a.  경기가 연기될 경우 이 건에 대한 모든 배팅은 환불된다. 경기가 중단되기 전까지 명확한 결과가 나오는 것을 제외하고 경기가 중단될 경우 이 건에 대한 모든 배팅 금액은 환불된다.</p>
									<br><br>
									<p>b.  토너먼트의 공식 결과에 따라서 배팅이 인정된다. 선수가 변경될 경우 모든 배팅은 무효이고 환불조치가 이루어진다.</p>
									<br><br>
									<p>c.  체스 배팅에 대하여 아래 항목들이 유효하다:</p>
									<br><br>
									<p>1. 경기의 승자.</p>
									<p>경기 결과를 예측하는 것을 말한다. 경기 시작 전 출전 선수가 불참하거나 실격으로 인해 출전을 하지 않을 경우 이 건에 대한 모든 배팅은 무효 처리된다. </p>
									<br><br>
									<p>2. 토너먼트 승자.</p>
									<p>한 플레이어 이상이 토너먼트 승자로 인정될 경우 팀에 대한 계수 결과는 승리한 플레이어의 수로 나누어져서 계산된다.  2명 또는 그 상의 플레이어가 동일한 포인트 수로 토너먼트 경기를 하였을 경우, 결과는 각 토너먼트의 주체 측이 발표한 승자를 기준으로 계산된다.</p>
									<br><br>
									<p>3. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>사이클 레이싱</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 최종 승자에 대한 모든 배팅 결과는 경기 종료 후 주체 측의 공식 리포트를 기준으로 결정된다. 기타 변경이 발생될 경우 결과는 계산 시 이를 포함시키지 않는다.</p>
									<br><br>
									<p>b.  드라이버가 출발선을 지나가지 않을 경우 모든 배팅은 무효이다.</p>
									<br><br>
									<p>c.  지정된 경기가 중단될 경우 결과에 대하여 별도의 명확한 규정이 있는 것을 제외하고 모든 배팅은 무효처리되고 배팅금액은 환불된다.</p>
									<p>d. 지정된 레이스가 중단될 경우 (관련 규정을 어기고 지정된 레이스 횟수가 정확히 수행되지 않을 경우), 결과에 대하여 별도의 명확한 규정이 있는 것을 제외하고 모든 배팅은 무효처리되고 배팅금액은 환불된다.</p>
									<p>e.  경기 시작시간이 보류되어 30시간 이상 레이스가 중단될 경우 이 포지션에 대한 모든 배팅은 무효처리되고 배팅금액은 환불된다.</p>
									<p>f. 사이클링 배팅에 대해 아래와 같은 항목들이 제시된다:</p>
									<br><br>
									<p>1. 레이스 승자.</p>
									<p>어느 플레이어가 레이스에서 승리할 것인지 예측하여 배팅하는 것을 말한다. 실격이 발생될 경우 배팅 결과는 시상을 하는 시점에 이루어지는 일반적으로 결정된 결과를 기준으로 산출된다. 레이스의 승자는 전체 경주를 기준으로 1위를 차지한 레이서를 말한다. 어느 드라이버도 전체 레이스를 완주하지 못했을 경우 승자는 완주했던 레이스를 기준으로 1위를 차지한 드라이버로 결정된다. 양 드라이버가 같은 수의 스테이지(단계)를 완료했을 경우 마지막 스테이지에서 승리를 차지한 드라이버를 기준으로 승자가 결정된다.</p>
									<br><br>
									<p>2. 스테이지 승자.</p>
									<p>레이스의 특정 스테이지에서 승리를 차지한 드라이버를 예측하여 배팅하는 것을 말한다.</p>
									<p>레이스에 참여하지 않은 모든 드라이버에 대한 모든 배팅은 무효이고 환불된다. 어떤 드라이버가 실격 처리될 경우, 결과는 시상대에서 드라이버에게 시상을 하는 당시에 적용되는 일반적으로 결과를 기준으로 계산된다.</p>
									<br><br>
									<p>3. 어느 드라이버가 가장 좋은 성적을 거둘 것인가 (레이스 결과를 기준으로)?</p>
									<p>레이스의 결과를 기준으로 일반적인 분류의 방식으로 어느 드라이버가 가장 좋은 성적을 거둘 것인가를 예측하여 배팅하는 것을 말한다. 이 포지션의 배팅이 유효하기 위해서는 지정된 양 드라이버는 반드시 레이스를 시작해야 한다. 부여된 포지션에서 최소한 한 명의 드라이버가 레이스를 완료해야 한다. 그렇지 않을 경우 이 포지션에 대한 모든 배팅금액은 반환된다. 지정된 이 포지션의 드라이버들 중 단지 한 명만이 레이스를 마칠 경우, 레이스를 완료한 드라이버가 승리하는 것으로 결정되고 배팅금액을 계산할 때 반영된다.</p>
									<br><br>
									<p>4. 어느 드라이버가 가장 좋은 성적을 거둘 것인가 (스테이지 결과를 기준으로)?</p>
									<p>스테이지 결과를 기준으로 어느 드라이버가 가장 좋은 성적을 거둘 것인가를 예측하여 배팅하는 것을 말한다. 배팅이 유효성을 갖기 위해서는 이 포지션에서 최소한 한 명의 드라이버가 스테이지 라인을 완료해야 한다. 그렇지 않을 경우 이 포지션에 대한 모든 배팅은 환불 된다. 이 포지션에 대한 배팅이 유효성을 가지려면, 지정된 드라이버들 중 최소한 한 명이 레이스를 시작해야만 한다.이 포지션에 언급된 드라이버들 중 단지 한 명 만이 스테이지를 완료했을 경우, 이 드라이버가 가장 좋은 성적으로 거둔 것으로 간주되어 당첨금액이 산출된다.  </p>
									<br><br>
									<p>5. 어느 팀이 가장 좋은 성적을 거둘 것인가 (레이스 결과를 기준으로)?</p>
									<p>레이스의 결과를 기준으로 일반적인 분류의 방식으로 어느 팀이 가장 좋은 성적을 거둘 것인가를 예측하여 배팅하는 것을 말한다. 이 포지션의 당첨 금액(rate)계산이 유효하기 위해서는 지정된 팀들 중 최소한 한 팀이 레이스를 시작해야 한다.  그렇지 않을 경우 이 포지션에 대한 모든 당첨 금액(rate)은환불된다. 지정된 이 포지션의 팀들 중 단지 한 팀만이 레이스를 마칠 경우, 당첨 금액(rate)를 계산할 때 이 팀이 가장 높은 점수를 기록하여 승리한 것으로 간주된다.</p>
									<br><br>
									<p>6. 어느 팀이 가장 좋은 성적을 거둘 것인가 (스테이지 결과를 기준으로)?</p>
									<p>스테이지 결과를 기준으로 어느 팀이 가장 좋은 성적을 거둘 것인가를 예측하여 배팅하는 것을 말한다. 배팅(rate)이 유효성을 갖기 위해서는 이 포지션에서 최소한 한 팀이 스테이지 라인을 완료해야 한다. 그렇지 않을 경우 이 포지션에 대한 모든 당첨 금액(rate)은환불된다.  이 포지션에 대한 당첨 금액(rate)이 유효성을 가지려면, 지정된 팀들 중 최소한 한 팀이 레이스를 시작해야만 한다.이 포지션에 언급된 팀들 중 단지 한 팀 만이 스테이지를 완료했을 경우, 완료를 하였던 팀이 가장 좋은 성적으로 거둔 것으로 간주되어 당첨 금액(rate)이 산출된다.</p>
									<br><br>
									<p>7. 킹 오브 마운틴</p>
									<p>당첨 금액(rate)계산은 경기의 규제기관(주체측)과 연맹의 공식 리포트에 따라서 결정된다. 레이스/스테이지가 종료된 후 공식적인 결과가 발표된 후 실격 등과 같은 변수가 발생하여 계산이 변경될 경우 이는 최초의 결정에 영향을 끼치지 못한다.</p>
									<br><br>
									<p>8. 각 부분에 대한 포인트.</p>
									<p>각 부분에 대하여 어느 드라이버가 최대 포인트를 기록할 것인지를 예측하는 것을 말한다.</p>
									<p>당첨 금액(rate) 계산은 규제기관(주체측) 또는 연맹의 공식 발표 리포트에 따라서 결정된다. 공식 리포트가 발표된 이후 발생된 수치의 변경 또는 실격 등은 이미 발표된 레이스 공식 리포트 기록에 영향을 끼치지 않는다.</p>
									<br><br>
									<p>9. 포디움(시상대에 오를 마지막 드라이버)에 대한 마지막 선수è 어느 레이서까지 입상을 할 것인가?</p>
									<p>레이스의 최종 3위까지를 예측하여 배팅을 하는 것을 말한다. 당첨 금액(rate) 계산은 규제기관(주체측) 또는 연맹의 공식 발표 리포트에 따라서 결정된다. 공식 리포트가 발표된 이후 발생된 수치의 변경 또는 실격 등은 이미 발표된 레이스 공식 리포트 기록에 영향을 끼치지 않는다.</p>
									<br><br>
									<p>10. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>다트</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 게임이 30시간 이상 지연될 경우 이 포지션에 대한 모든 배팅은 무효이다. 만약 게임이 30시간 이내에 재개될 경우 이 매치에 대한 당첨 금액(rate)은 유효하다.</p>
									<br><br>
									<p>b.  만약 경기가 중단되거나 일찍 종결될 경우, 매치의 승자는 규제기관 또는 토너먼트의 심판의 공식적인 판정에 의해 다음 라운드로 진출할 선수와 승자가 선언된다. 이 경우, 남아있는 포지션에 대한 당첨 금액(rate)은 별도의 규정이나 언급이 없을 경우에는 무효로 간주된다. (예외 규정): 매치가 중단된 시점 이전까지 특별하게 결정된 결과가 있을 경우 당첨 금액(rate)은 유효하고 구속력을 갖는다.</p>
									<br><br>
									<p>c. 다트 배팅에 대한 항목들은 다음과 같다:</p>
									<br><br>
									<p>1. 승자.</p>
									<p>팀은 팀-1, 팀-2와 같은 2가지 옵션만을 갖는다 (무승부는 해당되지 않음). 매치가 무승부로 끝나면 이 포지션에 대한 모든 당첨 금액(rate)은환불된다.</p>
									<br><br>
									<p>2. 매치에 대한 스플리팅 아웃(splitting-outs ) 180의 이상 또는 이하?</p>
									<p>1세트 (또는 one try-한번의 시도)의 매치에 있어서 지정된 한도도 보다 이상 또는 그 이하로 180 포인트를 기록할 것인지 예측하는 것을 말한다. 매치 결과로서 180포인트에 대한 토탈 수치가 토탈 당첨 금액(rate)과 동일할 경우 환불된다.  매치가 중단되거나 감소될 경우 이 포지션에 대한 모든 배팅은환불된다.</p>
									<br><br>
									<p>3. 플레이어-1에 의한 스플리팅 아웃(splitting-out) 180 이상 이하  또는 플레이어-2에 의한 스플리팅 아웃(splitting-out)의 오버(Over) 또는 언더(Under)? </p>
									<p>1세트(또는 one try-한번 시도)의 다트 게임에서 어느 플레이어가 지정된 한도 이상 또는 이하로 180 포인트를 달성할 것인지에 대한 상황을 예측하여 배팅을 하는 것을 말한다. 매치 결과로서 지정된 플레이어의180포인트에 대한 총 수치가 토탈 배팅배팅(rate)과 같은 경우 배팅은환불된다. 매치가 중단되거나 조기 종결될 경우 이 포지션에 대한 모든 배팅은환불된다.</p>
									<br><br>
									<p>4 . 레그(legs/게임)에 대한 핸디캡 매치.</p>
									<p>핸디캡 상황에서 같은 포인트가 발생될 경우 배팅은환불된다.  만약 경기가 중단되거나 조기에 종료될 경우 이 포지션에 대한 모든 배팅은환불된다.</p>
									<br><br>
									<p>5. 정해진 게임(leg)의 승리 컬러(색상).</p>
									<p>정해진 leg(게임)의 승자에 의해 어떤 색상의 섹션부분을 마지막으로 성공적으로 적중시킬 것인지 예측하는 것을 뜻한다. 이 포지션의 계산을 위해 전체 leg (게임)이 완료되어야 한다.</p>
									<br><br>
									<p>6.  40.5 이상 또는 이하의 게임(leg)의 더블(Double) 승리</p>
									<p>지정된 40.5 이상 또는 이하로 최종적으로 더블을 기록할 것인지 예측하여 배팅하는 것을 뜻한다. 이 포지션에 대한 산출을 위해, 전체 게임(leg)가 종료되어야만 한다.</p>
									<br><br>
									<p>7. 토너먼트 승자.</p>
									<p>한 팀 이상이 토너먼트 승리 팀으로 인정될 경우 이 팀에 대한 오즈 배팅은 승리 팀의 숫자로 나누어져서 산출된다. 지정된 플레이어 또는 팀이 토너먼트에 불참할 경우 (토너먼트 게임에 단 1초도 플레이를 하지 않을 경우), 이 포지션에 대한 불참 팀/플레이어의 당첨 금액(rate)은환불된다.</p>
									<br><br>
									<p>8. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>E- 스포츠</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  별도의 언급이 없을 경우 연장전을 포함하여 배팅이 승인된다. 무승부일 경우 오즈 1로서 산출된다.</p>
									<br><br>
									<p>2.  어떠한 이유 때문에 플레이어가 게임을 계속 진행할 수 없거나 실격을 당할 경우 그 플레이어에 대한 모든 배팅은 무효이다. 게임 시작 전 참가 거부(실격)등이 발생될 경우 도는 전반전에 테크니컬 패배를 당할 경우 승리 오즈는 수치 “1”로서 인정된다.</p>
									<br><br>
									<p>3.  게임이 30시간 이상 지연될 경우 오즈 1로서 배팅이 산출된다.</p>
									<br><br>
									<p>4.  심판에 의해 경기가 중단된 후 다시 진행될 경우, 중단될 때의 결과는 인정되지 않는다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>플로어볼</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  하키 형태의 종목으로서 플로어에서 부드러운 플라스틱 재질로 만들어진 스티과 속이 빈 플라스틱 볼을 사용하여 골대에 골을 넣는 실내경기를 말한다.</p>
									<br><br>
									<p>2.  연장시간과 페널티킥 승부는 단지 다음 라운드 토너먼트 승자에 대한 배팅에 대하여 적용된다.</p>
									<br><br>
									<p>3.  만약 매치가 취소되거나 30시간 이상 동안 지연될 경우 이 매치에 대한 모든 배팅은 오즈 1을 갖는다.</p>
									<br><br>
									<p>4.  매치가 최소 50분 이상 진행될 경우 본 매치는 유효한 것으로 간주된다. 만약 매치가 중단되어 15시간 이내에 재개되지 않을 경우 매치 중단시점까지의 공식 결과를 기준으로 배팅배팅이 산출된다.</p>
									<br><br>
									<p>5.  모든 배팅은 정규경기시간 (총 60분, 각 20분씩 3회)이 종료된 후 그 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>6. 매치가 취소되거나 15시간 이상 중단될 경우 경기 중단 시점까지 명확하게 결정된 결과를 제외하고 모든 배팅은 오즈 1을 갖는다. 매치가 중단되기 전까지 경기 결과에 대한 명확한 정의가 있을 경우 (예, 1sttime, 첫 골, 첫골 시간 등등) 당첨 금액을 산출하는데 포함된다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>필드하키</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  모든 배팅은 별도 언급이 없는 한, 정규경기시간 (총 70분, 전반전/후반전 각 35분씩 또는 17분 30초씩 4회)이 종료된 후 그 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>2. 연장시간과 페널티킥 승부는 단지 다음 라운드 토너먼트 승자에 대한 배팅에 대하여 적용된다.</p>
									<br><br>
									<p>3. 만약 매치가 취소되거나 30시간 이상 동안 지연될 경우 이 매치에 대한 모든 배팅은 오즈 1을 갖는다.</p>
									<br><br>
									<p>4. 매치가 취소되거나 15시간 이상 중단될 경우 경기 중단 시점까지 명확하게 결정된 결과를 제외하고 모든 배팅은 오즈 1을 갖는다. 매치가 중단되기 전까지 경기 결과에 대한 명확한 정의가 있을 경우 (예, 1sttime, 첫 골, 첫골 시간 등등) 당첨 금액을 산출하는데 포함된다.</p>
									<br><br>
									<p>5. 매치가 최소 60분 이상 진행될 경우 본 매치는 유효한 것으로 간주된다. 만약 매치가 중단되어 15시간 이내에 재개되지 않을 경우 매치 중단시점까지의 공식 결과를 기준으로 배팅배팅이 산출된다.</p>
									<br><br>
									<p>6. 토너먼트 예선전에서 동일한 성적이 나올 경우 더 많은 포인트를 기록한 팀이 승리 팀으로 간주된다.  만약 포인트가 같을 경우 최종 protocol 일자를 기준으로 배팅이 산출된다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>풋살(5인조 미니축구)</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.   모든 배팅은 별도 언급이 없는 한, 정규경기시간 (총 40분, 20분 2라운드)이 종료된 후 그 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>2.  연장시간과 6미터 슛은 단지 다음 라운드 토너먼트 승자에 대한 배팅에 대해서만 적용된다.</p>
									<br><br>
									<p>3.  만약 매치가 취소되거나 35시간 이상 동안 지연될 경우 이 매치에 대한 모든 배팅은 오즈 1을 갖는다.</p>
									<br><br>
									<p>4.  매치가 취소되거나 15시간 이상 중단될 경우 경기 중단 시점까지 명확하게 결정된 결과를 제외하고 모든 배팅은 오즈 1을 갖는다. 매치가 중단되기 전까지 경기 결과에 대한 명확한 정의가 있을 경우 (예, 1sttime, 첫 골, 첫골 시간 등등) 당첨 금액을 산출하는데 포함된다.</p>
									<br><br>
									<p> 5. 매치가 최소 60분 이상 진행될 경우 본 매치는 유효한 것으로 간주된다. 만약 매치가 중단되어 15시간 이내에 재개되지 않을 경우 매치 중단시점까지의 공식 결과를 기준으로 당첨 금액이 산출된다.</p>
									<br><br>
									<p>풋살 종목 관련 웹사이트</p>
									<p>Futsal. Brazilian championship: http://www.futsaldobrasil.com</p>
									<p>Futsal. Spanish championship: http://www.lnfs.es</p>
									<p>Futsal. Italian championship: http://www.divisionecalcioa5.it</p>
									<p>Futsal. Polish championship: http://futsalekstraklasa.pl</p>
									<p>Futsal. Portuguese championship: http://www.futsalportugal.com</p>
									<p>Futsal. Russian championship: http://www.amfr.ru</p>
									<p>Futsal. Romanian championship: http://www.frf.ro</p>
									<p>Futsal. Czech championship: http://www.fotbal.cz</p>
									<p>Futsal. Japanese championship: http://www.fleague.jp</p>
									<br><br>
									<p>6. 풋살에 대한 통계 데이터의 결정은 상기에 명시된 웹사이트의 내역들을 기준으로 한다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>헨드볼</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 매치에 대한 배팅(rate)은 별도 언급이 없는 한 연장전을 제외한 정규경기시간을 기준으로 계산된다. 연장전의 결과는 후반전의 배팅 결과를 산출하는데 사용되지 않는다.</p>
									<br><br>
									<p>b. 모든 결과는 각 리그 또는 토너먼트의 공식 웹사이트 및 라이브 게임 영상 기록의 공식적인 통계수치에 따라서 계산된다. 만약 회사의 통계수치가 TV중계의 통계와 일치하지 않을 경우 회사의 통계수치를 기준으로 배팅이 산출된다.</p>
									<br><br>
									<p>c.  매치가 취소되거나 30시간 이상 중단될 경우 경기 중단 시점까지 명확하게 결정된 결과를  제외하고 모든 배팅은환불된다.</p>
									<br><br>
									<p>d. 헨드볼 배팅에 대한 항목들은 다음과 같다:</p>
									<p>1. 승리 팀 .</p>
									<p>매치의 결과를 예측하는 것으로서 연장전을 포함하지 않고 단지 정규경기 시간에 대해서만 당첨 금액(rate)이 인정된다.</p>
									<br><br>
									<p>2. 토탈.</p>
									<p>매치의 결과로서 토탈 스코어가 토탈 당첨 금액(rate)과 동일하고 옵션으로 정확한 골 수가 명시되지 않을 경우 배팅은 환불된다. 또한 각 팀 또는 플레이어들에게 동일하게 적용된다.</p>
									<br><br>
									<p>3. 핸디캡.</p>
									<p>핸디캡이 적용된 상황에서 무승부가 발생될 경우 배팅은 환불된다. (배팅에 적용된 매치의 기간과 관계없이).</p>
									<br><br>
									<p>4. 어느 플레이어가 첫(다음/마지막) 7미터 페널티 슛을 성공할 것인가?</p>
									<p>부여된 배팅이 플러스(파저티브: +)의 결과를 얻기 위해서는 첫 번째 시도에서 7미터 페널티 슛이 성공되어야 한다. 첫 번째 시도에 대하여 볼이 골키퍼 또는 골대를 맞은 후 되돌아온 볼을 플레이어가 던질 경우, 당첨 금액의 승리 결과는 “NO”로 간주된다.</p>
									<br><br>
									<p>5. 어느 팀이 첫 골을 기록할 것인가?</p>
									<br><br>
									<p>6. 어느 팀이 다음 골을 기록할 것인가?</p>
									<p>승인된 당첨 금액에 대하여 경기가 종료될 때 까지 다음 골이 나오지 않을 경우, 이 옵션에 대한 모든 배팅은환불된다.</p>
									<br><br>
									<p>7. 어느 팀이 마지막으로 득점에 성공할 것인가?</p>
									<p>연장전을 포함하지 않고 정규경기시간을 기준으로 당첨 금액이 인정된다.</p>
									<br><br>
									<p>8. 어느 팀이 매치에서 첫 5(10/15/20) 골을  기록할 것인가?</p>
									<p>어느 팀이 매치에서 지정된 골 수를 먼저 기록할 것인지에 대하여 배팅을 하는 것을 말한다.</p>
									<p>만약 경기가 종료될 때까지 지정 골수를 기록하지 못할 경우, 이 포지션에 대한 모든 배팅은환불(환불) 된다.</p>
									<br><br>
									<p>9. 어느 팀이 첫5 (10/15/20)골을 전반전에서 기록할 것인가?</p>
									<p>어느 팀이 전반전에서 지정된 골 수를 먼저 기록할 것인지에 대하여 배팅을 하는 것을 말한다.</p>
									<p>만약 전반전이 종료될 때까지 지정 골수를 기록하지 못할 경우, 이 포지션에 대한 모든 배팅은환불된다.</p>
									<br><br>
									<p>10. 더블 결과</p>
									<p>아래와 같은 결과들이 발생될 수 있다:</p>
									<p>1X – 홈 팀의 승리로 경기가 종료되거나 무승부일 경우 이 포지션에 대한 모든 배팅은 승리로 간주된다.</p>
									<p>X2 – 원정 팀의 승리로 경기가 종료되거나 무승부일 경우 이 포지션에 대한 모든 배팅은 승리로 간주된다.</p>
									<p>12 – 홈 팀의 승리 또는 원정 팀의 승리로 경기가 종료될 경우 이 포지션에 대한 모든 배팅은 승리로 간주된다.</p>
									<br><br>
									<p>11. 전반전/매치.</p>
									<p>전반전과 전체 매치의 결과를 예측하는 것을 말한다.  라인 맨 위쪽에 위치하고 있는 [A5]는 전반전의 결과이며 두 번째 라인에 위치하고 있는 것은 전체 매치의 결과이다.</p>
									<br><br>
									<p>12. 어느 하프(전반전 또는 후반전)에서 더 많은 골이 기록될 것인가?</p>
									<p>전반전과 후반전의 골 수가 같다면 당첨 금액은환불된다.</p>
									<br><br>
									<p>13. 토탈 짝/홀 또는 토탈 팀-1(팀-2) 짝/홀</p>
									<p>경기 결과가 0-0일 경우, 배팅은 “짝”으로 계산된다.</p>
									<br><br>
									<p>14. 다음 라운드로 진출.</p>
									<p>당첨 금액(rate)은 추후에 발생될 수도 있는 사법적/징계결정과는 관계없이 플레이오프 지정된 라운드를 기준으로 시리즈 마지막 매치가 종료된 후 결정된 결과에 따라서 계산된다(또는 다음 라운드로 진출할 수 있는 자격을 결정하는 정규 경기 종료 후 결과에 의거하여).   만약 지정된 팀이 참가거부 또는 자격미달 등의 이유로 인하여 경기에 참가하지 못할 경우, 상대 팀이 최종 승리한 것으로 </p>간주한다.
									<br><br>
									<p>15. 토너먼트 승리 팀 .</p>
									<p>한 팀 이상이 토너먼트 승리 팀으로 인정될 경우 이 팀에 대한 오즈 배팅은 승리 팀의 숫자로 나누어져서 산출된다.</p>
									<br><br>
									<p>16. 그룹 스테이지 승리 팀.</p>
									<p>토너먼트 라운드로서 모든 그룹 매치가 종료된 후 그 결과에 따라서 당첨 금액이 결정된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다.배팅이 적용된 팀이 자격미달의 사유로 경기에 불참할 경우 이 팀에 대한 모든 배팅은 반환된다.</p>
									<br><br>
									<p>17. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
									<p>헐링</p>
									<br><br>
									<p>1.   모든 배팅은 별도 언급이 없는 한, 정규경기시간 (총 70분, 각 35분씩 2라운드)이 종료된 후 그 결과를 기준으로 산출된다. 전후반 무승부일 경우 연장전 20분(전반후반 연장전 각 10분씩)을 하여 최종 승리 팀을 결정한다.</p>
									<br><br>
									<p>2.  매치가 중단된 시점에 결과가 결정되는 것을 제외하고 정규 경기시간까지 경기를 하였을 경우 배팅은 인정된다.</p>
									<br><br>
									<p>3. 매치의 토탈 스코어를 기준으로 모든 배팅이 계산된다. (골=3, 개인 포인트=1)</p>
									<br><br>
									<p>4. 예를 들어, 매치 결과가 팀-A는 0-18  (0 – 골수, 18 – 개인 포인트)이고 팀-B는 2-10일 경우에는 팀-B가 16 (2골 각 3포인트 그리고 10 개인 포인트)을 얻은 반면에 팀-A는 18포인트(18 개인 포인트)를 얻었기 때문에 팀-A가 18-16으로 승리한 것으로 간주된다.</p>
									<br><br>
									<p>5.  매치가 중단되어 30시간이 경과해도 재개되지 않을 경우 경기가 중단된 시점에서 특별하게 결정되는 결과를 제외하고 이 포지션에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>6.  경기 날짜가 30시간 이내에 연기될 경우 지정된 매치에 대한 모든 배팅은 그대로 유효하다. 반면에 지정된 매치에 대한 모든 배팅금액은 환불이 가능하다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>영국과 아일랜드(아이리쉬) 경마</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1. 늦은 기권 (경마가 시작되기 직전에 레이스에 참여하지 않을 경우):</p>
									<p>a. 출발 전 기권하거나 레이스에 참여하지 않을 경우 기권한 경마에 대하여 스테이크는 환불된다. 그리고Tattersalls’ Rule 4 규정에 의거하여 승리 배팅의 공제가 적용된다.</p>
									<br><br>
									<p>공제 배팅은 다음과 같다;</p>
									<p>소수 오즈</p>
									<p>분수 오즈</p>
									<p>순수(Net) 공제</p>
									<p>1,12 or lower</p>
									<p>1/9 or shorter</p>
									<p>90%</p>
									<p>1.13-1.19</p>
									<p>1/8-2/11</p>
									<p>85%</p>
									<p>1.20-1.27</p>
									<p>1/5-1/4</p>
									<p>80%</p>
									<p>1.28-1.33</p>
									<p>7/25-8/25</p>
									<p>75%</p>
									<p>1.34-1.44</p>
									<p>1/3-11/25</p>
									<p>70%</p>
									<p>1.45-1.57</p>
									<p>4/9-14/25</p>
									<p>65%</p>
									<p>1.58-1.66</p>
									<p>4/7-13/20</p>
									<p>60%</p>
									<p>1.67-1.83</p>
									<p>4/6-4/5</p>
									<p>55%</p>
									<p>1.84-1.99</p>
									<p>5/6-49-50</p>
									<p>50%</p>
									<p>2.00-2.24</p>
									<p>Events-31/25</p>
									<p>45%</p>
									<p>2.25-2.59</p>
									<p>5/4-39/25</p>
									<p>40%</p>
									<p>2.60-2.79</p>
									<p>8/5-7/4</p>
									<p>35%</p>
									<p>2.80-3.39</p>
									<p>9/5-23/10</p>
									<p>30%</p>
									<p>3.40-4.19</p>
									<p>12/5-3/1</p>
									<p>25%</p>
									<p>4.20-5.40</p>
									<p>16/5-22/5</p>
									<p>20%</p>
									<p>5.50-6.99</p>
									<p>9/2-23/4</p>
									<p>15%</p>
									<p>7.00-10,99</p>
									<p>6/1-9/1</p>
									<p>10%</p>
									<p>11.00 and higer</p>
									<p>10/1 and higer</p>
									<p>No deduction</p>
									<br><br>
									<p>b.  2마리 이상의 경마가 출전을 하지 않을 경우 총 공제금액은(90p in £)을 초과하지 않는다.</p>
									<p>경마가 출전을 취소하거나 새로운 마켓이 형성될 경우, 새로운 마켓(레이스) 이전에 형성된 배팅에 대한 가격은 상기 공제 배팅의 적용을 받는다. 새로운 마켓(레이스)이 다시 형성된 후 또 다시 기권을 하는 상황이 발생될 경우 원래 마켓의 쇼 가격(show price)에 걸었던 배팅은 원래 마켓에서 기권한 경마의 가격을 기준으로 추가적인 공제의 적용을 받는다. 새로운 마켓의 배팅은 현재의 가격을 기준으로 공제된다.</p>
									<br><br>
									<p>c.  상기 차트는 레이스에 출전하는 경마가 없을 경우에도 또한 적용된다.</p>
									<br><br>
									<p>d.  당신이 배팅한 마켓에 대하여 토탈 공제가£에서 5p가 있는 곳에서는 공제가 면제된다.</p>
									<br><br>
									<p>2. 배팅 승인과 결제:</p>
									<p>a. Jockey Club과 Irish Turf Club의 규정에 의거하여 개최된 경마경기의 배팅이 승인된다.</p>
									<p>경마에 대한 배팅은 공식 결과에 따라서 결제된다. 그러나 영국 경마에서는 스페셜 더블 결과에 대하여 할인(concession)이 적용된다. 반면 아이리쉬 경마는 공식 결과에 따라서 레이스에서 승리한 경마를 기준으로 적용된다. 각 방식의 배팅에 있어서 할인(concession)은 싱글 우승과 복수배팅 그리고 승자에 적용이 된다. 판돈(배팅에 걸었던 금액)에는 제한이 없다.</p>
									<br><br>
									<p>b. 공식결과와 레이스 승자 모두에 대해 정산이 없는 예외의 상황은 다음과 같다- the Grand National; an ante post bet; 무효인 레이스: 다른 코스로 경마가 질주를 할 경우; 심판의 오심에 의해 승자가 결정될 경우; 경마의 몸무게 오류 또는 기수 몸무게 오류; 선호 경마에 배팅 ; 2마리의 경주마에 배팅을 하는 경우</p>
									<br><br>
									<p>c.  체중측정 이후 결과가 변경되더라도 정산에 영향을 주지 않는다.</p>
									<br><br>
									<p>d.  특별하게 규정된 사항이 없을 경우 모든 배팅은 레이스가 시작된 일자에 승인된 것으로 간주된다. 그러나 토요일에 “일요일 레이스 카드”가 인쇄되는 것처럼 사전에 레이스 카드가 인쇄되는 것은 허용된다.</p>
									<br><br>
									<p>영국과 아이리쉬 경마에 대한 모든 배팅은 최종 배당률-시작가격(SP) 반환(starting price 환불s)으로 정산된다. 최종 배당률-시작가격(SP)은 레이스의 “off”로서 가능한 가격이다. 777i-master 최종 배당률-시작가격 또는 산업 최종 배당률이 반환될 경우 다른 곳에서 공표된 최종 배당률에 대하여 우선권을 갖는다. 그리고 쇼(show)가 없는 배팅의 정산에 사용된다.  최종 배당률-시작가격이 없으면 환불되고 쇼가 없는 것으로 간주된다. 그리고 ante post(경쟁마의 번호가 게시되기 전의 내기)는 배팅의 최종 쇼(show)를 기준으로 정산이 요청된다.</p>
									<p>3. 선호 경마(우승 후보)에 대한 배팅:</p>
									<p>a. 가장 강력한 우승 후보에 배팅을 할 경우 가장 확률이 작은  오즈가 배당된다. 경마와 그레이하운드에 대하여 우승후보 경마/그레이하운드를 지정하여 배팅을 하는 것은 단지 최종적인 배당률(시작가격)로서 승인된다. 777i-master SP(최종 배당률/시작가격) 또는 산업 SP가 환불되는 곳에서는 다른 SP에 대하여 우선권이 부여된다. 선호 경마는 배팅의 최종 쇼에 의해서 결정된다. 최종 배당률이 공시되지 않은 잘 알려져 있지 않은 경마에 배팅을 할 경우 환불되고 이러한 경우에는 규정-2를 참조하면 된다.</p>
									<br><br>
									<p>b. 당신이 선호하는 경마를 지명하여 2마리 이상의  레이스를 가장 적은 오즈를 가지고 레이스를 펼칠 경우  당신의 스테이크는 동일하게 나누어진다.</p>
									<br><br>
									<p>c.  결과에 관계 없이 환불이 원래 금액보다 같거나 동일한 곳에 대한 싱글 선호 배팅에 대하여 스테이크는 환불된다.  예를 들어, Evs joint favorites, 4개 중의3/1 co-favorites 등을 뜻한다. 누적된 배팅에서joint(공동) 또는co-favorites(공동의 선호 경마)가 발생되는 경우에는, 이 포지션에는 경주마가 없는 것으로 간주된다.</p>
									<br><br>
									<p>d.  경마에 대하여 첫 번째 그리고 두 번째로 선호하는 경주마에 대한 승리와 각각의 배팅 방식은 승인된다.</p>
									<br><br>
									<p>e.  출발 신호를 기다리고 있지 않는 경마(출전 명단에 포함되어 있지 않은 경마)</p>
									<p>가 선호 경마일 경우 이 경주마에 배팅을 할 경우 무효이다. 이 경우 두 번째 선호 경마로 배팅을 이전하는 것은 인정되지 않는다.</p>
									<br><br>
									<p>5. Show 가격:</p>
									<p>a. Show 가격은 레이스 시작 전 제공된 현재 가격을 뜻한다.</p>
									<p>b.  모든 레이스와 이벤트는 변동 가격의 적용을 받는다.</p>
									<p>c.  이 가격에 배팅을 원할 경우 반드시 이 부분을 명기해야 한다.</p>
									<p>d.   Tattersalls’ Rule 4 규정에 의한 공제의 결과를 초래하는 경마가 출전을 하지 않고 새로운 마켓이 형성되지 않을 경우 경마의 출전 포기 시점 이후 쇼 가격이 공지되지 않는다.</p>
									<br><br>
									<p>e. 각각의 배팅 방식은 가격이 공지되었을 때 지정된 경마의 숫자에 의해서가 아니라Show 또는 SP(최종 배당률/시작가격) 배팅 조건하에 있어야 하고 실제 출발 경주마의 수가 결정 되어질 때 배팅이 성립된다. </p>
									<br><br>
									<p>f.  현 show 가격으로 결정된 2마리 이상의 경주마가 레이스에 출전해야만 배팅이 성립된다. 선택한 부분에 대한 Show 가격을 받은 곳에서 당신의 배팅이 적용을 받는다.</p>
									<br><br>
									<p>g.  Early bird 레이스에서 출발을 기다리고 있는 상태에서 경마가 출전을 하지 않을 경우 그 부분에 대한 스테이크는 출전을 포기하는 시점에서 출전하지 않은 경마의 가격을 기준으로Tattersalls’ Rule 4규정에 따라서 공제가 적용되는 다른 경주마에 대한 배팅과 함께 환불된다. 초기에 출전 경마가 없어서 마켓이 다시 형성될 경우에 초기 마켓의 배팅에 대한 공제는 그 마켓에서의 출전하지 않은 경마에 대해 제시되었던 마지막 가격을 기준으로 한다. 최종적으로 선언된 후 배팅이 된 경마에 대한 배팅은ante post(경쟁마의 번호가 게시되기 전의 내기)가 아니고 이러한 규정에 따라서 결정될 것이다.</p>
								</div>
							</div>
						</li>
						<li>
						<div class="acc_head"><h3>아이스 하키</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a.   국내외 아이스 하키 챔피언십에 대한 배팅은 별도의 언급이 없을 경우 정규경기시간을 기준으로 계산된다.</p>
									<br><br>
									<p>b.   경기시작시간이 15시간 이상 지연될 경우 지정된 매치에 대해 승인된 모든 배팅은 계수(coefficient) 1로서 환불된다.</p>
									<br><br>
									<p>c.   매치가 연기되어 30시간 이내에 재개되지 않을 경우 매치가 지연된 시점까지의 결과를 제외한 상태에서 계수(coefficient)-1로서환불된다.</p>
									<br><br>
									<p>d.    2 팀의 승리 팀(team-1 승리 / team-2 승리)에 대해 승인된 배팅은 연장전과 승부차기를 포함해서 계산된다.</p>
									<br><br>
									<p>e. 라인에서 “토탈 골 오버/언더”결과에 대해 승인된 배팅은 다른 별도의 언급이 없는 한 같은 날에 플레이된 경기에서 기록한 스코어를 고려하여 계산된다. 최소 1 경기가 연기되거나 취소될 경우 환불된다.</p>
									<br><br>
									<p>f.  승리 팀, 핸디캡, 특정 기간의 토탈, 퇴장,  (피어리어드, 골, 퇴장) 또는 지정된 피어리어드의 스코어 등과 같은 여러 지표들이 배팅 옵션에 포함되어 있어야 한다.</p>
									<br><br>
									<p>g. 아이스 하키 배팅에 대한 항목들은 다음과 같다:</p>
									<p>1. 승리 팀.</p>
									<p>매치의 결과를 예측하는 것을 말한다. 이 포지션에서 2가지 결과(team-1 승리 / tean-2 승리)가 가능할 경우, 연장전과 페널티킥 승부를 포함해서 배팅이 승인된다. 만약 3가지 결과(team-1 승리 / tean-2 승리/무승부)가 가능할 경우, 연장전과 페널티킥 승부를 제외한 정규시간을 기준으로 배팅이 인정된다.</p>
									<br><br>
									<p>2. 토탈</p>
									<p>미국 하키 리그와 다른 나라 하키 리그에 대한 배팅은 정규경기시간을 기준으로 인정된다. 3가지 옵션(골에 대한 이상/이하/동일)을 포함한 이상/이하에 대한 배팅은 챔피언십 경기와 관계없이 모든 하키 매치의 정규시간에 대해서만 적용된다. 매치의 결과로서 토탈 골 스코어가 토탈 배팅배팅과 같고 단지 2가지 옵션(골에 대한 이상/이하, 동일은 적용되지 않음)만이 있을 경우 환불조치 된다.</p>
									<br><br>
									<p>3. 개별적 토탈 (지정된 팀).</p>
									<p>미국 하키 리그와 다른 나라 하키 리그에 대한 배팅은 정규경기시간을 기준으로 인정된다.</p>
									<p>3가지 옵션(골에 대한 이상/이하/동일)을 포함한 이상/이하에 대한 배팅은 챔피언십 경기와 관계없이 모든 하키 매치의 정규시간에 대해서만 적용된다. 매치의 정규시간에 대해서만 적용된다. 매치의 결과로서 토날 골 스코어가 토탈 배팅과 같고 단지 2가지 옵션(골에 대한 이상/이하, 동일은 적용되지 않음)만이 있을 경우 환불조치 된다. 이상/이하 골 (지정된 팀)의 배팅은 심판에 의해 공식적으로 인정이 되는 골만을 고려한다.</p>
									<br><br>
									<p>4. 이상/이하 골 (특정 플레이이어).</p>
									<p>매치 경기에 플레이어가 출전을 하지 않을 경우 지정된 플레이어의 이상/이하 골에 대한 배팅은 환불된다.</p>
									<p>국가와 토너먼트와 관계없이 이러한 포지션에 대한 모든 배팅은 연장전과 페널티킥 승부가 제외된 정규경기시간을 기준으로 계산된다.</p>
									<br><br>
									<p>5. 핸디캡.</p>
									<p>미국 하키 리그와 다른 나라 하키 리그에 대한 배팅은 정규경기시간을 기준으로 인정된다. 핸디캡은 단지 2가지 옵션 (핸디캡-1 또는 핸디캡-2 / 무승부에 대한 옵션은 없음)만을 갖는다.</p>
									<p>핸디캡이 고려된 상황에서 무승부가 발생될 경우 계수(coefficient)1로서환불된다. (배팅에 적용된 매치의 기간과 관계없이)</p>
									<br><br>
									<p>6. (지정된 시간/분) 에서의 승리 팀</p>
									<p>지정된 경기시간에 대한 매치 결과를 예측하는 것을 말한다. 만약 매치가 중단되어 15시간 이내에 종료되지 않을 경우 이 포지션에 대한 모든 배팅은 환불된다. 명확함을 위하여: 부여된 경기시간의 결과에 대한 배팅을 계산하는데 있어서 스코어는minute parameter라고 명시된0초[A9]가 사용된다.</p>
									<p>예: 게임의 첫 5분의 승리 팀. 5분 0초로 고정된 게임에서 득점한 스코어를 기준으로 계산됨.</p>
									<br><br>
									<p>7. 그룹 (컨퍼런스/지구) 승리팀</p>
									<p>시즌기간이 줄어들면,  배팅배팅 계산은 하키리그 연맹의 공식판결을 기준을 결정된다.</p>
									<br><br>
									<p>8. 토너먼트 승리 팀.</p>
									<p>당첨 금액(rate)은 토너먼트 종료 후 결과에 따라서 계산된다. 당첨 금액(rate)은 토너먼트 종료 후 결과에 따라서 계산된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다. 배팅 참가 예정 팀이 출전 포기 또는 실격 패를 당할 경우 이 팀에 대한 모든 당첨 금액(rate)는 무효이다. 2팀 이상의 토너먼트 승리 팀이 발생될 경우 이 팀에 대한 배팅의 계수(coefficient)는 승리 팀의 숫자로 나누어져서 계산된다. (1이하의 계수로서)</p>
									<br><br>
									<p>9. 어느 팀이 다음 라운드로 진출할 것인가?</p>
									<p>차후에 발생되는 사법적 또는 징계적 결정과 관계없이 배팅은 지정된 플레이오프 시리즈의 마지막 매치가 종료된 후 그 결과를 기준으로 계산된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다.</p>
									<br><br>
									<p>10. 플레이오프 시리즈 승리 팀(베스트 3개 팀 / 베스트 5개 팀/ 베스트 7개 팀).</p>
									<p>경기 규정에 따라 시리즈 승리를 위해 필요한 매치가 플레이되지 않을 경우 이 포지션에 대해서는 환불된다.</p>
									<br><br>
									<p>11. 어느 플레이어가 매치에서 선취골을 기록할 것인가?</p>
									<p>매치에서 첫 골을 기록한 플레이어에 대한 당첨 금액은 승리한 것으로 간주된다. 부여된 옵션에서 지정되지 않은 플레이어가 기록한 첫 골은 무효이다. 지정된 플레이어가 출전하지 않을 경우 이 특정 플레이어에게 적용된 모든 배팅은 계수-1로서 산출되고 환불된다. 만약 첫 골이 자책골일 경우 이 포지션에 대한 모든 배팅에서 패배하게 된다. 국가와 토너먼트와 관계없이 이러한 포지션에 대한 모든 배팅은 연장전과 페널티킥 승부를 제외한 정규경기시간을 기준으로 적용된다.</p>
									<br><br>
									<p>12. 어느 팀이 더 많은 슛을 기록할 것인가?</p>
									<p>어느 팀이 더 많은 슛을 기록할 것인지 예측하여 배팅하는 것을 말한다. 미국과 다른 나라의 하키리그에 대한 배팅은 정규시간을 기준으로 적용된다. 계산은 각 챔피언십 연맹의 공식 웹사이트에서 발표한 통계수치를 기준으로 산출되어야 한다.</p>
									<br><br>
									<p>13. 이상/이하 슈팅</p>
									<p>계산은 각 챔피언십 연맹의 공식 웹사이트에서 발표한 통계수치를 기준으로 산출되어야 한다. 이 포지션에 대한 계산시 다른 소스는 인정되지 않는다. 미국과 다른 나라의 하키리그에 대한 배팅은 정규시간을 기준으로 적용된다. 매치 결과로서 토탈 스코어가 토탈 당첨 금액과 동일할 경우 배팅은 환불된다.</p>
									<br><br>
									<p>14. 핸디캡이 적용된 배팅에서 어느 팀이 더 많은 슈팅을 기록할 것인가?</p>
									<p>계산은 각 챔피언십 연맹의 공식 웹사이트에서 발표한 통계수치를 기준으로 산출되어야 한다.이 포지션에 대한 계산시 다른 소스는 인정되지 않는다. 핸디캡이 적용된 상황에서 양 팀의 슈팅 숫자가 동일할 경우 환불된다. 미국과 다른 나라의 하키리그에 대한 배팅은 정규시간을 기준으로 적용된다.</p>
									<br><br>
									<p>15. 더블 결과 (매치에 대하여 또는 피어리드에 대하여)</p>
									<p>다음과 같은 결과들이 나올 수 있다:</p>
									<p>(매치 또는 피어리드 결과에 대하여)</p>
									<p>1X –  팀-1이 승리하거나 무승부가 나올 경우(배팅에서 승리)</p>
									<p>X2 – 팀-2이 승리하거나 무승부가 나올 경우(배팅에서 승리)</p>
									<p>12 – 팀-1 또는 팀-2가 승리할 경우 (배팅에서 승리)</p>
									<p>이 포지션에 대한 당첨 금액은 연장전과 페널티킥 승부를 포함하지 않고 단지 정규경기시간의 결과를 기준으로 산출된다.</p>
									<br><br>
									<p>16.  “첫 (지정된 수치의) 분”의 더블 결과.</p>
									<p>매치의 지정된 특정 시간 (15항 참조)의 더블 결과를 예측하는 것을 말한다. 만약 매치가 중단되고 15시간이 경과해도 재개되지 않을 경우 이 포지션에 대한 모든 배팅은 환불된다.</p>
									<p>명확함을 위하여: 부여된 매치시간의 결과에 대한 배팅을 계산하는데 있어서 스코어는minute parameter라고 명시된 0초[A9]가 사용된다. 예: 게임의 첫 5분의 승리 팀. 5분 0초로 고정된 게임에서 득점한 스코어를 기준으로 계산됨.</p>
									<br><br>
									<p>17. 양 팀 모두 스코어를 기록할 것인가?</p>
									<p>양 팀이 기록한 모든 골이 계산된다.</p>
									<br><br>
									<p>18. 매치에서 몇 스코어 차이로 승리할 것인가?</p>
									<p>국가나 토너먼트와 관계없이, 이 포지션에 대한 모든 배팅은 연장전과 페널티킥 승부를 제외한 정규시간을 기준으로 적용된다.</p>
									<br><br>
									<p>19. 어느 시간에 첫 골이 나올 것인가?</p>
									<p>첫 골이 나올 시간을 예측하여 배팅하는 것을 말한다.</p>
									<br><br>
									<p>20.  매치의 정확한 스코어 예측</p>
									<p>연장전과 승부차기를 제외한 정규 경기시간만이 인정된다. 만약 최종 결과가 예측으로 제공된 결과와 일치하지 않고 “Any other”로 명시된 결과에 배팅을 한 회원이 배팅의 승자로 간주된다.</p>
									<br><br>
									<p>21. 지정된 피어리어드/매치에서 얼마나 많은 “2분간 서스펜션(출전정지)”이 발생될 것인가?</p>
									<p>이 배팅을 계산하기 위해서 각각의 2분간 퇴장은 2로 인정된다. 더블 마이너 페널티(더블 마이너) (2+2분)은 각각의 마지막 남은 2분의 2-출전정지(서스펜션)로 카운트된다. 피어리드 시작 전 발생한 모든 반칙은 이전 피어리드의 반칙으로 간주된다. 게임이 종료되고 발생된 반칙은 이전 피어리드에 속한다. (3피어리드 또는 연장전 등) 득점을 올린 사실 때문에 효력을 상실한 (지연된) 서스펜션(출전정지)은 매치의공식 기록에 포함되어 있거나 그렇지 않을 경우와 관계 없이 인정되지 않는다.</p>
									<br><br>
									<p>22. 어느 피어리드에서 가장 많은 스코어가 나올 것인가?.</p>
									<p>연장전 또는 승부차기를 제외한 정규경기시간만 인정된다.  2개 이상의 피어리드에서 같은 스코어가 발생될 경우 배팅배팅계수(coefficient of the rate)는 “Loss”로 간주된다.</p>
									<br><br>
									<p>23.어느 팀이 3 퍽스(3 pucks) 스코어를 기록할 것인가?</p>
									<p>상대팀 골대에 득점한 퍽스(pucks)만이 인정된다. 배팅은 연장전 또는 승부차기를 제외한 정규경기시간만 인정된다. </p>
									<br><br>
									<p>24. 토탈 매치 “홀/짝”.</p>
									<p>결과가 0일 경우 “짝”으로 계산된다. 미국 하키 리그와 다른 리그들에 대한 배팅은 정규경기시간을 기준으로 결정된다.</p>
									<br><br>
									<p>25. 팀의 토탈 스코어: 홀 / 짝.</p>
									<p>결과가 0일 경우 “짝”으로 계산된다.</p>
									<br><br>
									<p>26. 어느 팀이 먼저 첫골을 기록할 것인가?</p>
									<p>만약 자책 골로 첫 득점이 발생될 경우, 상대 팀이 득점을 한 것으로 간주되어 당첨 금액(rate)이 계산된다.</p>
									<p>국가나 토너먼트와 관계없이 이 포지션에 대한 모든 배팅은 연장전과 승부차기를 제외한 정규경기시간을 기준으로 계산된다.</p>
									<br><br>
									<p>27. 매치에서 어느 팀이 다음 골을 기록할 것인가?</p>
									<p>만약 그 다음 골이 자책골일 경우, 상대 팀이 득점을 한 것으로 간주되어 배팅배팅(rate)이 계산된다</p>
									<p>국가나 토너먼트와 관계없이 이 포지션에 대한 모든 배팅은 연장전과 승부차기를 제외한 정규경기시간을 기준으로 계산된다.</p>
									<br><br>
									<p>28. 어느 팀이 매치의 마지막 골을 기록할 것인가?</p>
									<p>만약 마지막 골이 자책골일 경우, 상대 팀이 득점을 한 것으로 간주되어 배팅배팅(rate)이 계산된다.</p>
									<p>국가나 토너먼트와 관계없이 이 포지션에 대한 모든 배팅은 연장전과 승부차기를 제외한 정규경기시간을 기준으로 계산된다.</p>
									<br><br>
									<p>29. 선취골을 기록한 팀이 매치에서 승리할 것인가?</p>
									<p>이에 대한 결과는 다음과 같다:</p>
									<p>“Yes” –  매치에서 첫 골을 기록한 팀이 승리할 경우</p>
									<p>“No” –매치에서 첫 골을 기록한 팀이 패배할 경우</p>
									<p>당첨 금액은 연장전과 페널티킥 승부를 포함해서 인정된다.</p>
									<p>정규경기시간 또는 연장전 동안 어느 팀도 득점을 기록하지 못할 겨우 이 포지션에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>30. 어느 피어리드에서 가장 많은 스코어가 나올것인가?</p>
									<p>모든 배팅은 연장전과 승부차기를 제외한 정규경기시간을 기준으로 계산된다.</p>
									<p>2개 이상의 피어리드에서 같은 스코어가 발생될 경우 가장 유효한 피어리드에 대한 배팅배팅은 “lost”로 간주된다.</p>
									<br><br>
									<p>31.  매치에서 연장전이 발생될 것인가?</p>
									<p>연장전이 선언되었지만 기술적인 이유 때문에 플레이되지 않을 경우 이 포지션에 대한 모든 배팅은 승리옵션 “Yes” (연장전이 있음)로써 계산된다.</p>
									<br><br>
									<p>32. 피어리어드 유효성의 비교 .</p>
									<p>피어리드에서 발생된 골은 배팅에 그대로 인정된다. 연장전의 결과는 3 피어리드의 결과에 영향을 끼치지 않고 계산시 반영되지 않는다. 국가나 토너먼트와 관계없이 이 포지션에 대한 모든 배팅은 연장전과 승부차기를 제외한 정규경기시간을 기준으로 계산된다.</p>
									<p>33. 다음 라운드로 진출.</p>
									<p>토너먼트 라운드 프레임(틀) 이내에서 지정된 팀의 모든 매치가 종료된 후 배팅배팅이 계산된다. 배팅배팅(rate)은 라운드가 종료된 후 그 결과가 결정되며 비록 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다. 실격 또는 참가 거부를 한 팀에 배팅을 하였을 경우 이 건에 대한 모든 배팅은 “lost”로 간주된다.</p>
									<br><br>
									<p>34. 타임 페널티 토탈</p>
									<p>제시된 옵션을 기준으로 그 이상 또는 이하의 타임 페널티가 발생될 것인지 예측하는 것을 말한다. (즉, “반칙을 저지른 선수를 일정한 시간 동안 경기 출전을 유보시키는 것”에 대한 횟수를 말함)</p>
									<p>미국과 다른 나라의 하키리그에 대한 배팅은 정규시간을 기준으로 적용된다. 매치 결과로서 토탈 스코어가 토탈 배팅(배팅)과 동일할 경우 환불된다.</p>
									<br><br>
									<p>35. 타임 페널티 핸디캡.</p>
									<p>미국과 다른 나라의 하키리그에 대한 배팅은 정규시간을 기준으로 적용된다. 핸디캡이 적용된 배팅에서 무승부가 발생될 경우 환불된다.</p>
									<br><br>
									<p>36. 토탈 “골 + 어시스트”  (지정된 플레이어).</p>
									<p>매치에서 플레이어가 기록한 토탈 “골+어시스트” 수치가 지정된 한도보다 이상 또는 이하인지를 예측하는 것을 말한다. 매치의 결과로서 플레이어가 기록한 토탈 “골+어시스트” 수치가 토탈 배팅과 같을 경우 환불된다.</p>
									<br><br>
									<p>37. 그날 라인에 공지된 매치들의 골수(이상/이하).</p>
									<p>그날 라인에 공지된 매치들만 인정된다. 토너먼트 2경기 이상이 연기되거나 지연될 경우 이 포지션에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>38.  이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>게일식 축구(Gaelic football) </h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  모든 배팅은 정규경기시간(60분 / 전후반전 각각 30분씩)의 결과를 기준으로 산출된다. 무승부가 나올 경우 각각 10분씩 2번의 연장전에 들어가 최종 승리 팀을 결정한다.</p>
									<br><br>
									<p>2.  특별한 경우, 즉 경기가 중단된 시점에 명확히 정의된 결과를 제외하고 매치가 완료되면 모든 배팅은 유효하다. </p>
									<br><br>
									<p>3. 모든 배팅은  매치의 토탈 스코어 (골=3, 개별적/개인 포인트=1)를 기준으로 산출된다.</p>
									<br><br>
									<p>4.  예를 들어, 만약 팀-A가 0-18(0-골수, 18-개인 포인트) 그리고 팀-B가 매치의 결과로서 2-10일 경우에 “팀-A가 18포인트 (18 개인 포인트)를 반면에 팀-B 16 (2골 각 3포인트 그리고 10 개인 포인트)를 가졌기 때문에” 결국  팀-A가 18-16으로 승리하게 된다.</p>
									<br><br>
									<p>5.  매치가 중단되어 30시간 이내에 재개되지 않을 경우 경기가 중단된 시점에 명확히 정의된 결과를 제외하고 이 포지션에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>6. 경기 예정일자가 30일 이내에 연기될 경우 지정된 매치에 대한 모든 배팅은 유효하다. 그렇지 않을 경우 모든 배팅은 환불된다. </p>
									<br><br>
									<p>모토 레이싱</p>
									<p>a.  모토 레이싱은Formula 1, Moto GP, German DTM, WTTC, Superbike, Super sport, Trial 기타 관련 연맹(단체)의 규정이 배팅에 적용된다. 드라이버와 팀 포인트의 분배는 레이스 종료 후 바로 발표된 최종 공식 리포트에 의해 결정된다. 차후에 북메이커에 의해 “포스트 레이스”(레이스 발표 이후 레이스 참여를 신청할 수 있는 특별한 경주)의 드라이버 실격처리와 리포트의 변경은 허용되지 않는다.</p>
									<br><br>
									<p>c.  모든 배팅에 대한 승자는 토너먼트 공식 관련 연맹의 발표에 의한 공식 레이스 시간을 기준으로 결정된다.</p>
									<br><br>
									<p>d.  “페이스 랩” (경기 개시 전에 선도차를 따라 모든 경주차가 코스를 일주하는 행위)을 하지 않은(거부한) 드라이버는 레이스를 이미 시작한 것으로 자동 분류된다.</p>
									<br><br>
									<p>e. 모토 레이싱에 대한 항목들은 다음과 같다:</p>
									<p>1. 레이스 승자.</p>
									<p>리포트에서 승자라고 승인함으로써 레이스에서 1위를 차지한 드라이버를 말한다. 지정된 드라이버가 레이스에 출전하지 않을 경우 이 포지션에 지정된 드라이버에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>2. 시상대 오를 드라이버 (입상 가능한 드라이버).</p>
									<p>레이스 결과를 기준으로 3위까지 차지할 드라이버를 예측하는 것을 말한다. 레이스에 지정된 드라이버가 출전하지 않을 경우 이 포지션에 지정된 드라이버에 대한 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>3. 챔피언십 승자.</p>
									<p>지정된 드라이버가 챔피언십의 어떤 레이스에도 출전하지 않을 경우 이 포지션에 지정된 드라이버에 대한 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>4. 챔피언십 탑-3 드라이버.</p>
									<p>챔피언십 결과에 따라서 탑-3 드라이버를 예측하는 것을 말한다. 만약 지정된 드라이버가 챔피언십 레이스에도 출전하지 않을 경우 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>5.  Trophy / Cup of Constructors 챔피언십의 승리 팀</p>
									<p>지정된 시즌의 The Trophy /Cup of Constructors 챔피언십을 어느 팀이 차지할 것인지 예측하는 것을 말한다. 시즌이 시작되기 전에 참가를 거부하거나 자격미달일 경우, 이 팀에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>6. 어느 레이서 (2명이 참가한 경주)가 승리할 것인가?
									지정된 2명의 레이서 중 어느 레이서가 승리할 것인가를 예측하는 것을 말한다. 이 경우, 최종 리포트에서 높은 포인트를 얻은 드라이버가 베스트 레이서가 된다. 양 레이서가 레이스에 참가하지 않을 경우 더 많은 랩(lap)를 돈 드라이버가 승자로 간주된다. 만약 양 레이서 모두 랩(lap)을 돌지 않을 경우 환불된다. 레이서들 중 어느 한 명이 레이스에 출전하지 않을 경우 레이스를 완주한 레이서가 승리한 것으로 간주된다. 만약 어떤 레이서가 더 많은 랩(lap)을 돌았지만(최소 1-랩을 완료하였음에도 불구하고) 레이스에서 실격처리 되었을 경우, 레이스를 완주한 레이서가 승자로 간주된다. 하지만 양 드라이버 모두 레이스에서 실격 처리되었을 경우 배팅은 환불된다. </p>
									<br><br>
									<p>7. 어느 팀이 더 많은 포인트를 기록할 것인가?</p>
									<p>어느 팀이 더 많은 유효 포인트를 기록할 것인지 예측하는 것을 말한다. 양 팀 모두 유효 포인트를 얻지 못할 경우 더 적은 공간을 점유한 레이서가 있는 팀을 승리 팀으로 간주하다.  지정된 팀에서 최소한 한 명의 드라이버가 레이스에 출전할 경우, 그 포지션에 대한 모든 배팅은 유효하고 그렇지 않을 경우에는 이 포지션에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>8. 드라이버의 레이스 탈락 유무.</p>
									<p>드라이버의 레이스 탈락 유무를 예측하여 배팅하는 것을 말한다. 동시에, 종료 전 단지 적은 랩(lap)의 레이스에서 드라이버가 탈락했지만 공식 리포트에 의해서 리더로부터 여분의 “n” 랩(lap) 레이스로서 분류가 되는 드라이버는 레이스를 완주한 것으로 간주된다. 지정 드라이버가 레이스에 출전하지 않을 경우 이 포지션에 지정된 드라이버에 대한 배팅은 모두 환불된다. 레이스가 종료되자 마자 최종 공식 리포트에 따라서 드라이버의 순위가 결정된다.북메이커에 의해 레이스 이후 발생된 드라이버의 실격과 리포트의 변경은 인정되지 않는다.</p>
									<br><br>
									<p>9. 가장 빠른 랩(lap)을 한 드라이버에 대한 배팅(rate).</p>
									<p>만약 지정 드라이버가 레이스에 출전하지 않을 경우 이 포지션의 지정 드라이버에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>10. 남아있는 시즌의 레이스에서 어느 드라이버가 더 많은 포인트를 기록할 것인가?</p>
									<p>만약 남아있는 시즌의 레이스에서 최소 한 명의 드라이버가 출전하지 않을 경우, 이 포지션에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>11. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>럭비 리그 / 럭비 유니언</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a.  라인에서 별도의  언급이 없을 경우 연장전을 제외한 정규경기시간 (80분+추가시간)을 기준으로 배팅이 승인된다.</p>
									<br><br>
									<p>b.  매치가 30시간 이상 중단될 경우 경기가 중단된 시점에서 결과에 대한 명확한 정의가 있는 것을 제외하고 모든 배팅은 환불된다.</p>
									<br><br>
									<p>c. 15시간 이상 경기시작 시간이 지연될 경우 모든 배팅은 환불된다:</p>
									<p>예외:</p>
									<p>경기의 연기가 있을 경우에는 종전에 예정된 일정 (월요일부터 일요일 까지, 시간 GMT)과 같이 같은 요일의 기간에 경기가 다시 개최될 수 있도록 새로운 데이터와 경기시간이 즉시 다시 공지되어야 한다. 이런 조치가 즉각적으로 취해질 경우 배팅은 여전히 유효하다. </p>
									<br><br>
									<p>d. 럭비 배팅에 대한 항목들은 다음과 같다:</p>
									<p>1. 매치의 승리 팀 .</p>
									<p>매치의 승리 팀을 예측하는 것으로서 배팅은 정규경기시간을 기준으로 승인된다.</p>
									<br><br>
									<p>2. 토탈.</p>
									<p>매치의 결과로서 토탈 스코어가 토탈 배팅과 동일할 경우 환불되며 각 팀 또는 플레이어들에게 동일하게 적용된다.</p>
									<br><br>
									<p>3.  Handicap.</p>
									<p>핸디캡은 단지 2가지 옵션 (핸디캡-1 또는 핸디캡-2 / 무승부에 대한 옵션은 없음)만을 갖는다. 핸디캡이 고려된 상황에서 무승부가 발생될 경우 환불된다. (배팅에 적용된 매치의 기간과 관계없이).</p>
									<br><br>
									<p>4. 더블 결과.</p>
									<p>다음과 같은 결과들이 나올 수 있다:</p>
									<p>1X –  팀-1이 승리하거나 무승부가 나올 경우 (배팅에서 승리)</p>
									<p>X2 – 팀-2이 승리하거나 무승부가 나올 경우 (배팅에서 승리)</p>
									<p>12 – 팀-1 또는 팀-2가 승리할 경우 (배팅에서 승리)</p>
									<br><br>
									<br><br>
									<p>5. 어느 팀이 다음 라운드로 진출할 것인가?</p>
									<p>배팅배팅(rate)은 지정된 팀이 경기에 출전하여 토너먼트 라운드 시리즈 마지막 매치를 완료한 후 산출된다. 라운드 중의 경기 결과에 관계 없이 지정된 팀이 최종적으로 다음 라운드로 진출을 했을 경우 배팅에서 승리한 것으로 간주된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다.</p>
									<br><br>
									<p>6. 개별적(개인) 토탈l (지정된 팀).</p>
									<p>지정된 팀이 명시된 골 한도 이상 또는 이하로 득점을 올릴 것인지 예측하여 배팅하는 것을 말한다.  매치의 결과로서 토탈 스코어가 토탈 배팅배팅(rate)과 동일할 경우 배팅은 환불된다.</p>
									<p>상대 팀이 기록한 골이 심판에 의해 공식적으로 인정이 되어야 배팅이 유효하다. 모든 자책골은 상대 팀의 득점으로 간주된다.</p>
									<br><br>
									<br><br>
									<p>7. 토너먼트 승리 팀 .</p>
									<p>배팅(배팅)은 토너먼트 종료 후 결과에 따라서 계산된다. 라운드가 종료된 후 사법부 또는 다른 판결기관에 의해 기존 토너먼트 결과를 취소하거나 변경할 지라도 이 건에 대한 배팅 결과에 영향을 미치지 않는다. 배팅 참가 예정 팀이 출전 포기 또는 실격 패를 당할 경우 이 팀에 대한 모든 배팅은 무효이다.</p>
									<br><br>
									<p>8. 매치에서 레드카드가 나올 것인가?</p>
									<p>9. 매치에서 엘로우 카드가 나올 것인가?</p>
									<br><br>
									<p>10. 토탈 홀/짝</p>
									<p>매치 결과가“0:0″일 경우 배팅배팅(rate)은 “짝”으로 인정된다.</p>
									<br><br>
									<p>11. 전반전 / 매치</p>
									<p>전반전 또는 전체 경기의 결과를 예측하여 배팅을 할 수 있다. 첫 번째 라인에서 전반전의 결과 그리고 두 번째 라인에서 전체 경기 결과가 공지된다</p>
									<br><br>
									<p>12. 어느 플레이어가 첫 골을 기록할 것인가?</p>
									<p>어느 플레이어가 첫 골을 기록할 것인지 예측하는 것을 뜻하는 것으로서 지정된 선수가 출전을 하지 않을 경우 이 포지션의 해당 선수에 대한 모든 배팅은 환불된다. 만약 옵션에서 지정하지 않은 플레이어가 득점을 올릴 경우 이 포지션에 대한 모든 배팅(rate)은 무효이다. (예외): 첫 골이 난 후 출전하지 않은 플레이어에 대한 배팅; 이 경우 배팅(rate)은 계수(coefficient-1)로서 환불된다.  첫 골이 자책골일 경우 (배팅-rate)이 승인한 플레이어에 의해 득점이 발생되었을 지라도), 이 포지션에 대한 모든 배팅은 무효이다. (예외) 첫 골이 난 후 출전하지 않은 플레이어에 대한 배팅: 이 경우 배팅(rate)은 계수(coefficient)-1로서환불된다. </p>
									<br><br>
									<p>13. 어느 플레이가 마지막 골을 기록할 것인가 ?</p>
									<p>매치에서 마지막 골을 기록할 플레이어를 예상하는 것을 말한다. 플레이어가 매치에 출전하지 않을 경우, 이 포지션에 대한 결장한 선수의 배팅배팅(rate)은 계수(coefficient-1)로환불된다.(환불됨).</p>
									<p>지정된 옵션 이외의 플레이어가 마지막 골을 기록할 경우, 이 포지션에 대한 모든 당첨 금액(rate)은환불된다. (예외: 게임에 출전하지 않은 플레이어에 대한 배팅: 이러한 경우 당첨 금액(rate)은 계수(coefficient-1)로환불된다). 만약 마지막 골이 자책골일 경우 (배팅에서 지정한 플레이어가 골을 기록했을 지라도), 이 포지션에 대한 모든 배팅배팅(rate)은 무효이다. 예외: 마지막 골이 기록될 때 까지 경기에 출전하지 않은 플레이어에 대한 배팅배팅(rate): 이러한 경우의 배팅(rate)은 계수(coefficient-1)로 반환된다</p>
									<br><br>
									<br><br>
									<p>14. 매치의 정확한 스코어</p>
									<p>매치의 정확한 골 스코어를 예측하는 것을 뜻한다. 매치의 결과에 따라 정확한 스코어가 라인에서 공식적인 옵션으로 제공되지 않을 경우 이 포지션에 대환 모든 배팅은 “lost”으로 간주된다.</p>
									<br><br>
									<p>15. 몇 점의 스코어로 매치에서 승리할 것인가?</p>
									<p>매치에서 어느 팀이 몇 점 차이로 승리할 것인지 또는 무승부 결과가 나올 것인지를 예측하여 배팅하는 것을 말한다. </p>
									<br><br>
									<p>16. 이러한 스포츠 유형에 있어서 상기에  언급된 내역 이외의  다른 결과들이 또한 제공될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>스누커</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1.  경기 결과에 대한 배팅. 플레이어가 다음 라운드로 진출을 하기 위한 최소 프레임이 완료될 경우, 비록 경기가 중단되었어도 이때까지 승자는 그대로 유효하다.</p>
									<br><br>
									<p>2.  프레임 토탈, 프레임 오즈 그리고 스페셜 배팅에 대한 배팅.  승자를 결정하기 위해 필요한 전체 프레임 수의 경기가 완료되었을 경우 당첨 금액(rate)을 산출할 수 있다. 어떠한 상황으로 인해, 경기 종료 전 승자가 결정될 경우 프레임 토탈, 프레임 오즈 그리고 스페셜 배팅에 대한 모든 배팅 결과는 이미 결정된 특별한 경우를 제외하고 오즈와 함께 당첨 금액(rate)이 산출된다.</p>
									<br><br>
									<p>3.  경기가 중단된 시점에 결정된 결과를 제외하고 15시간 이상 경기가 중단될 경우 모든 배팅은 1에 상응하는 승리 오즈를 부여 받는다. 만약 경기 중단 후 15시간 이내에 재개된다면 이 경기에 대한 모든 배팅은 그대로 유효하다.</p>
									<br><br>
									<p>4.  만약 플레이어가 어떤 플레임에서 테크니칼 패배를 당할 경우 경기가 중단된 시점에서 결정된 배팅 결과를 제외하고 진행되었던 프레임 오즈와 토탈은 오즈 1로서 계산된다.</p>
									<br><br>
									<p>5.  토너먼트 승자에 대한 배팅. 경기 시작 전 플레이어가 토너먼트에 불참할 경우 승리 오즈는 1로서 인정된다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>테니스</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>테니스 경기에 대한 핸디캡과 토탈은 게임에서 명시된다.</p>
									<p>A. 세트 스코어 배팅이 제공된다. 라인의 해당 “란”은 예를 들어2:0, 2:1 등으로 명시된다.</p>
									<p>경기 형태(세트 수와 세트의 스코어)가 변경될 경우, 명시된 이벤트의 모든 결과에 대한 승리 오즈는  1로서 인정된다. 테니스 코트를 포함된 데이터 정보를 제공할 수 있으며 만약 정보가 변경되더라도, 모든 배팅은 여전히 유효하다. </p>
									<br><br>
									<p>a.  출전 예정 플레이어가 경기 시작 전 다른 플레이어로 교체될 경우 환불 처리된다. (팀간 경기는 제외됨). 어떠한 이유 때문에 팀간 경기에서 플레이어가 변경될지라도 배팅은 그대로 인정된다. 복식 경기에서 팀의 어느 한 플레이어 또는 모두다 다른 플레이어로 대체될 경우 배팅배팅은 오즈 1로서 계산된다.</p>
									<br><br>
									<p>b.  만약 플레이어가 퇴장했거나 실격처리 되었을 경우에도 이미 배팅이 진행되고 결정되었을 경우는 여전히 유효하다. 그 이외의 경우에는 모두 환불된다.</p>
									<p>1. 게임, 세트 그리고 테니스 게임의 결과</p>
									<p>2. 게임, 세트 그리고 테니스 게임의 핸디캡</p>
									<p>3. 게임, 세트 그리고 테니스 게임의 토탈</p>
									<p>4. 게임, 세트 그리고 테니스 게임의 정확한 스코어</p>
									<p>5. 그리고 다른 이벤트들</p>
									<p>c. 아래 경우에는 배팅이 유효하다:</p>
									<p>테니스 잔디 코트의 변경</p>
									<p>경기 장소의 변경</p>
									<p>실외 경기가 실내 경기로 대체될 경우</p>
									<br><br>
									<p>d.  토너먼트 승자를 위해 추천된 배팅은 출전 의무가 있는 플레이어를 고려하여 승인된다. 게임 시작 전 토너먼트 참가 플레이어가 변경될 경우 승리에 대한 모든 추천 배팅은 무효이고 환불된다.</p>
									<br><br>
									<p>e.  만약 경기가 연기되거나 해당 일자에 종료가 되지 않을 경우 플레이 되었던 토너먼트의 말미까지의 결과를 기준으로 배팅은 유효성을 갖는다.</p>
									<br><br>
									<p>f.  슈퍼 타이브레이크(super tie-break)의 경우에는 오즈와 토탈은 포인트로 카운트 된다. 1포인트는 1 게임과 같다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>탁구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 만약 플레이어가 퇴장했거나 실격처리 되었을 경우에도 이미 배팅이 진행되었을 경우는 배팅은 여전히 유효하다. 그 이외의 경우에는 모두 환불된다.</p>
									<br><br>
									<p>b.  출전 선수가 경기 시작 전 다른 선수로 교체되었을 경우, 이 이벤트에 대한 배팅은 환불된다.</p>
									<br><br>
									<p>경기가 연기되거나 중단될 경우 경기 중단시점에 주체 측에 의해 특별하게 결과가 결정 되어지는 것을 제외한 모든 배팅은 환불된다. 경기가 부상, 자격상실 등으로 인해 중단되거나 이러한 이유로 인해 다음 라운드로 진출하는 참가자가 결정이 될 경우 배팅배팅(rate)은 유효하다.</p>
									<p>아래와 같은 배팅 유형은 인정된다:</p>
									<br><br>
									<p>1. 경기의 승자</p>
									<p>경기의 승자를 예측하는 것</p>
									<br><br>
									<p>2. 세트의 승자.</p>
									<p>세트의 승자를 예측하는 것. 세트가 중단될 경우 이 건에 대한 모든 배팅은 환불된다.</p>
									<br><br>
									<p>3. 다음 피치(Pitch)에서 누가 승자가 될 것인가?</p>
									<p>다음 피치(pitch)가 진행되지 않을 경우 이 건에 대한 모든 배팅금액은 환불된다.</p>
									<br><br>
									<p>4.토탈 포인트.</p>
									<p>경기의 포인트 수치가 지정된 한도보다 많거나 적을 경우를 예측하여 배팅을 하는 것을 말한다. 만약 포인트 수치는 총 배팅배팅(rate)과 같을 경우 계수(coefficient) 1로서 배팅은 환불된다.</p>
									<br><br>
									<p>5. 핸디캡  (포인트).</p>
									<p>핸디캡을 고려한 상태에서 무승부가 나올 경우 계수(coefficient) 1로서환불된다.  이러한 경우에 별도(개별적)로 이루어진 포인트 스코어를 제외하고 포인트 관점에서의 스코어는 고려되어야 한다.  </p>
									<br><br>
									<p>6. 어느 플레이가 지정된 포인수 수치를 먼저 달성할 것인가?</p>
									<p>예정된 게임이 중단될 경우, 이 건에 대한 모든 배팅배팅(rate)는 계수(coefficient) 1로서 환불 처리된다.</p>
									<br><br>
									<p>7. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>수구</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 이벤트 주체 측의 특별한 언급이 없는 한 수구에 대한 모든 배팅은 정규 경기시간을 기준으로 한다. 단, 배팅에 대한 예외 규정이 있을 경우 별도로 공지되어야 한다.</p>
									<br></br>
									<p>b. 경기가 연기되거나 30시간 이상 중단되었을 경우 경기가 중단된 시점까지 특별하게 결정되는 결과를 제외하고 모든 배팅 금액은환불된다.</p>
									<br></br>
									<p>c. 만약 경기 시작시간이 30시간 이내로 연기될 경우 모든 배팅은 유효하며 그 반대의 경우에는 환불된다.</p>
									<br></br>
									<p>d.  쿼터의 승리 팀에 대한 당첨 금액(rate)계산은 스코어(이상/이하), 핸디캡이  적용된 코터, 지정된 시간에 기록한 스코어 등을 고려해서 산출된다. 별도의 언급이 없을 경우, 4피어리어드의 추가시간에 기록된 골은 배팅 결과로 인정되지 않는다. </p>
									<br></br>
									<p>e. 전(후)반전 승리 팀 당첨 금액(rate)의 산출은 스코어(이상/이하), 핸디캡이 적용전 전(후)반전 또는 지정된 시간에 득점한 스코어를 기준으로 계산된다. 전(후)반전의 승리 팀에 대한 당첨 금액(rate)의 계산은스코어(이상/이하), 전반전 헨티켑 또는 특별히 지정된 시간에 득점한 스코어를 기준으로 산출된다. 별도 언급이 없을 경우 2피어리어드 추가시간에 기록된 골은 인정되지 않는다.</p>
									<br></br>
									<p>f.  아래 명시된 수구 배팅 항목은 그대로 유효하다:</p>
									<br></br>
									<p>1.승리팀.</p>
									<p>정규경기시간 종료 후 경기 결과를 예측하여 배팅하는 것을 뜻한다.</p>
									<br></br>
									<p>2. 핸디캡.</p>
									<br></br>
									<p>3. 토탈.</p>
									<p>만약 경기의 토탈 스코어가 토탈 당첨 금액(rate)과 동일할 경우, 당첨 금액(rate)은 retrun되며 특정 팀 또는 플레이어에 대해서도 동일하게 적용된다.</p>
									<br></br>
									<p>4. 각각의 토탈 (특정 팀).</p>
									<p>특정 팀이 기록한 스코어가 토탈 당첨 금액(rate)과 같을 경우 환불 조치된다.</p>
									<br></br>
									<p>5. 다음 라운드로 진행될 경우</p>
									<p>연장시간 또는 페널티 킥 승부가 당첨 금액(rate)계산시 적용된다.</p>
									<br></br>
									<p>6. 토탈 홀/짝.</p>
									<p>합계가 0일 경우, “짝”으로 간주된다.</p>
									<br></br>
									<p>7. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>겨울 스포츠</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>a. 스포츠:</p>
									<p>스키</p>
									<p>바이애슬론</p>
									<p>봅슬레이</p>
									<p>크로스 컨트리 스키</p>
									<p>프리스타일 / 에어리얼</p>
									<p>썰매</p>
									<p>노르딕 복합경기</p>
									<p>스피드 스케이팅</p>
									<p>스켈리튼</p>
									<p>점핑</p>
									<p>스노우보딩</p>
									<br><br>
									<p>b.경기 거리, 라운드 횟수 또는 경기 장소 등이 변경될 경우 이 건에 해당되는 모든 배팅금액은 환불된다.</p>
									<br><br>
									<p>c. 경기시작 시간이 30시간 이상 지연될 경우 이벤트에 대한 모든 배팅배팅(rate)은 환불된다.</p>
									<br><br>
									<p>d. 이벤트가 중단되거나 중단된 후 30시간이 경과하였음에도 불구하고 재개되지 않을 경우 경기가 중단된 시점까지 특별하게 주체 측에 의해 결정된 결과를 제외하고  이 건에 해당되는 모든 당첨 금액(rate)은 환불된다.  </p>
									<br><br>
									<p>e. 경기가 중단된 후 다른 장소에서 이벤트가 시작될 경우 중단된 시점까지 특별하게 주체 측에 의해 결정된 결과를 제외하고  이건에 대한 모든 배팅은 무효이고 환불 처리된다.</p>
									<br><br>
									<p>f.  레이스 종료 후 발표된 공식 리포트에 의해서 출전 선수의 배정이 이루어진다. 레이스 이후 결과가 이미 결정된 상태에서 실격 선수 관련 이벤트 리포트의 변경이 있을 경우는 북메이커 회사는 이를 인정하지 않는다.</p>
									<br><br>
									<p>g. 겨울 스포츠에 대한 아래 항목들은 유효성을 가진다:</p>
									<br><br>
									<p>1. 팀(플레이어)에 대한 당첨 금액(rate).</p>
									<p>리포트를 포함해서 최종 1위를 차지한 출전 선수가 승리한 것으로 간주된다. 선수가 경기에 출전하지 않을 경우 모든 배팅배팅(rate)은 환불된다.</p>
									<br><br>
									<p>2. 3위까지 차지할 플레이어</p>
									<p>Top-3위까지 입상한 선수를 예측하여 배팅하는 것으로서 만약 지정된 플레이어가 지정 경기에 출전하지 않을 경우 배팅은 무효이고 환불 처리된다.</p>
									<br><br>
									<p>3. 게임 “어느 플레이어가 우선권을 부여할 것인가?”</p>
									<p>리포트에 포함된 최고 성적을 거둔 플레이어가 베스트 플레이어로 간주된다. 당첨 금액(rate)의 산출은 경기 종료 후 주체측 또는 각각의 연맹에 의해서 공식 발표된 리포트를 기준으로 산출된다. 경기 종료 후 실격선수 관련으로 이벤트 리포트의 변경이 발생될 경우 북메이커 회사는 이를 인정하지 않는다. 양 출전 선수가 플레이를 하지 않을 경우 모든 당첨 금액(rate)는 환불된다. 출전 선수 중 어느 한 명이 경기를 완료하지 않았을 경우 상대편 선수가 승리한 것으로 간주된다.</p>
									<br><br>
									<p>4. 상기 언급된 내역들 이외에 다른 결과들도 주체 측에 의해 제시될 수 있다.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="acc_head"><h3>정보 교환(Exchange)</h3></div>
							<div class="acc_content">
								<div class="acc_content_in_2">
									<p>1. 배팅 – 주체측과 플레이어 또는 양 플레이어 사이의 계약에 의해 배팅이 이루어진다. 주체 측에 의해 제공된 조건에 따라서 플레이어(“배팅 참가자”라고 칭함)가 스테이트 (state)를 승인 함으로서 배팅이 인정된다. 다시 말해서, 스포츠 게임에 대한 배팅은 자동화 시스템을 제공하며 결제에 대하여 커미션을 받는다. 고객이 규정에 동의를 함으로써 배팅은 독점적으로 승인된다.</p>
									<br><br>
									<p>2. 스테이트(state) – 주체측에 의한 개최된 이벤트에 대하여 배팅 참가자는 개인 또는 그룹 이벤트 결과를 예측하는 게임에 대한 참가의무 및 규정을 인정하고 이에 대해 주체측에 결제해야 하는 금액을 뜻한다.</p>
									<br><br>
									<p>3. 결과 – 주체측이 승리 오즈를 승인하고 배팅이 결정되어지는 모든 게임, 스포츠 그리고 중요한 여러 내역들에 대한 결과를 공표한다.  </p>
									<br><br>
									<p>4. 라인 – 배팅에 대하여 주체에 의해 제공되는 결과에 대한 승리 오즈와 모든 이벤트 리스트를 말한다. </p>
									<br><br>
									<p>5. 결과에 상반되는(against) 배팅– 게임의 결과를 신뢰하지 않은 베터는 승리 팀에 대하여 다른 베터의 배팅을 승인할 수 있다. 예) 체시와 멘체스터의 게임 매치에서 승리 팀이 첼시로 예측되어 있지만 베터는 그 결과에 동의하지 않은 경우</p>
									<br><br>
									<p>6. 결과에 대한 배팅–게임의 결과를 신뢰하지 않은 베터는 승리 팀에 대하여 다른 베터의 배팅을 승인할 수 있다. 예) 체시와 멘체스터의 게임 매치에서 승리 팀이 첼시로 예측되어 있지만 베터는 그 결과에 동의하지 않은 경우</p>
									<br><br>
									<p>일반조건</p>
									<p>1.  주체측은 게임, 스포츠 및 대단히 중요한 상황(이하 “이벤트”라고 칭함)들에 대해 배팅을 인정한다. 주체측은 배팅 양 당사자들에 대하여 자동화된 시스템을 제공한다. 서비스 비용으로서 회사는 각각의 배팅 항목에 대하여 회사의 버츄얼 계정을 사용하는 고객들로부터 커미션(중개 비용)을 받는다. 고객이 정확히 인지하고 있는 사실관계 그리고 이러한 배팅 규정을 전적으로 동의하는 사실에 입각한 기존 규정에 의거하여 모든 배팅은 독점적으로 승인된다.</p>
									<br><br>
									<p>2.  참가자는 회사의 서비스를 사용하는 다른 고객들과 함께 배팅을 할 수 있다. 참가자에 의해 행해지는 배팅 오퍼는 유효하고 이러한 규정에 따라서 정확히 이행될 경우 또한 그 유효성을 가진다.</p>
									<br><br>
									<p>3.  참가자에 의해 수행된 각각의 배팅 오퍼는 회사가 제공한 내역을 기준으로 적용된다. 참가자가 상반된 배팅을 하거나 결과에 대해 배팅을 할 수 있도록 오퍼에는 오즈가 포함되어 있어야 하며 참가자가 스테이크를 준비할 수 있도록 최대 금액합계도 또한 포함되어 있어야 한다.</p>
									<br><br>
									<p>4.  전적으로 또는 부분적으로 인정된 조건들은 승인이 난 후에는 참가자는 변경할 수 없다.</p>
									<br><br>
									<p>5. 참가자는 배팅 수락에 대한 오퍼들이 명시되어 있는 웹사이트의 각 섹션(부분)들을 적합한 방식으로 사용해야 한다. 회사는 현재의 배팅 페이지에서 모든 배팅을 승인할 수 있도록 공지해줘야 하며 참가자는 각종 정보와 스태이크(stake)를 위하여 기존 배팅 페이지를 클릭할 수 있어야 한다.</p>
									<br><br>
									<p>별첨</p>
									<p>1.당첨 금액이란 실제 당첨금액을 의미 하지 않는다. 문맥에 따라 배팅금액, 배팅금, 배팅, 결과등으로 해석이 가능하다.</p>
									<p>2.오즈는 일반적으로 배당률을 말한다.</p>
									<p>3.영문규정을 한글규정으로 번역 하였으나 해석의 차이나 번역의 오류가 있을시등 모든 규정은 영문규정을 우선으로 적용한다.</p>
								</div>
							</div>
						</li>
					</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!-- main_contents -->
<!-- wrap -->
<%@ include file="/inc/footer.jsp"%>
<script>
$(document).ready(function() {
	var urlParams = new URLSearchParams(window.location.search);
	var page = urlParams.get('page');
	if (page == "br"){
		$("#ht5").click();
	} else if (page == "tou"){
		$("#ht4").click();
	} else if (page == "bg"){
		$("#ht1").click();
	} else if (page == "gg"){
		$("#ht2").click();
	} else if (page == "faq") {
		$("#ht3").click();
	}
});
</script>
<script>
window.onload=function(){
	window.history.pushState('/help.jsp', '?page=gg', '/help.jsp');
	window.history.pushState('/help.jsp', '?page=bg', '/help.jsp');
	window.history.pushState('/help.jsp', '?page=br', '/help.jsp');
	window.history.pushState('/help.jsp', '?page=tou', '/help.jsp');
	window.history.pushState('/help.jsp', '?page=faq', '/help.jsp');
}
</script>