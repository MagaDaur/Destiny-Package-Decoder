// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[153];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r2.xy = t2.Load(r2.z).xy;
    r0.y = cb0[22].x / r4.z;
    r0.w = saturate(r4.w);
    r5.x = 1 + -r0.w;
    r5.x = r5.x * 0.649999976 + 0.349999994;
    r5.yz = r0.ww * float2(0.300000012,0.75) + float2(0.200000003,0.25);
    r0.y = r1.w + r0.y;
    r6.xyz = cb0[151].xyz * r5.yyy;
    r6.xyz = r6.xyz * cb0[150].xxx + r1.xyz;
    r0.w = saturate(cb0[152].x * 1.45000005);
    r0.w = 1 + -r0.w;
    r6.xyz = r6.xyz * r0.www;
    r7.xyz = cb0[137].xxx * r6.xyz;
    r8.xyz = r6.xyz * cb0[137].xxx + r3.xyz;
    r0.w = cb0[152].x * r3.w;
    r4.x = r0.w * 6.28318548 + r4.x;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 9.99999975e-006 + r0.w;
    r9.xyz = r1.xyz / r1.www;
    r9.xyz = r9.xyz * float3(0.100000001,0.100000001,0.100000001) + r3.xyz;
    r0.w = cmp(0.00100000005 < r0.w);
    r9.xyz = r0.www ? r9.xyz : r3.xyz;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = sqrt(r0.w);
    r1.w = 9.99999975e-006 + r0.w;
    r10.xyz = r6.xyz / r1.www;
    r10.xyz = r10.xyz * float3(0.100000001,0.100000001,0.100000001) + r8.xyz;
    r0.w = cmp(0.00100000005 < r0.w);
    r10.xyz = r0.www ? r10.xyz : r8.xyz;
    r11.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r11.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r11.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r5.yw = r9.xy / r9.zz;
    r5.yw = r5.yw * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = r10.xy / r10.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r5.yw = cb12[12].xy * r5.yw;
    r11.xy = (int2)r5.yw;
    r11.zw = float2(0,0);
    r0.w = t1.Load(r11.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r5.yw = cb12[12].xy * r9.xy;
    r12.xy = (int2)r5.yw;
    r12.zw = float2(0,0);
    r1.w = t1.Load(r12.xyw).x;
    r1.w = r1.w * cb0[0].y + cb0[0].x;
    r1.w = 1 / r1.w;
    r10.xyw = t0.Load(r11.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r5.y = dot(r10.xyw, r10.xyw);
    r5.y = rsqrt(r5.y);
    r10.xyw = r10.xyw * r5.yyy;
    r11.xyz = t0.Load(r12.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.y = dot(r11.xyz, r11.xyz);
    r5.y = rsqrt(r5.y);
    r11.xyz = r11.xyz * r5.yyy;
    r5.yw = cmp(float2(0,0) < r9.xy);
    r9.xy = cmp(r9.xy < float2(1,1));
    r5.y = r5.y ? r9.x : 0;
    r5.y = r5.w ? r5.y : 0;
    r5.y = r9.y ? r5.y : 0;
    r0.y = r5.y ? r0.y : 1;
    r5.y = r0.w + -r9.z;
    r5.w = cmp(0 < r5.y);
    r9.w = r5.w ? r0.y : 1;
    r0.y = -r1.w + r0.w;
    r0.w = dot(r10.xyw, r11.xyz);
    r0.w = 1 + -r0.w;
    r1.w = r1.w + -r10.z;
    r5.w = r5.y * r1.w;
    r5.w = cmp(r5.w < 0);
    r0.y = cmp(abs(r0.y) < 2.5);
    r0.y = r0.y ? r5.w : 0;
    r0.w = cmp(r0.w < 0.600000024);
    r0.y = r0.w ? r0.y : 0;
    r0.w = abs(r5.y) + abs(r1.w);
    r0.w = abs(r5.y) / r0.w;
    r5.y = dot(r11.xyz, r6.xyz);
    r5.w = r5.y + r5.y;
    r10.xyz = -r5.www * r11.xyz + r6.xyz;
    r10.xyz = r10.xyz * r5.zzz;
    r7.xyz = r0.www * r7.xyz + r3.xyz;
    r0.w = 1 + -r0.w;
    r12.xyz = r10.xyz * r0.www;
    r7.xyz = r12.xyz * cb0[22].xxx + r7.xyz;
    r7.xyz = r0.yyy ? r7.xyz : r8.xyz;
    r8.xyz = r0.yyy ? r10.xyz : r6.xyz;
    r0.y = cmp(abs(r1.w) < 0.0500000007);
    r10.xyz = -r5.yyy * r11.xyz + r6.xyz;
    r0.w = dot(r10.xyz, r10.xyz);
    r0.w = rsqrt(r0.w);
    r10.xyz = r10.xyz * r0.www;
    r0.w = dot(r10.xyz, r6.xyz);
    r5.z = 0.800000012 * r0.w;
    r5.x = cmp(abs(r5.y) < r5.x);
    r5.x = r0.y ? r5.x : 0;
    r0.w = cmp(r0.w < 0.0625);
    r0.y = r0.y ? r0.w : 0;
    r0.w = r0.y ? 9.99999975e-005 : r5.z;
    r5.yzw = r10.xyz * r0.www;
    r5.yzw = r5.xxx ? r5.yzw : r8.xyz;
    r6.xyz = cb12[7].xyz + -r7.xyz;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r6.xyz = r6.xyz * r0.www;
    r0.w = 0.100000001 + -r1.w;
    r6.xyz = r6.xyz * r0.www + r3.xyz;
    r6.xyz = r5.yzw * cb0[22].xxx + r6.xyz;
    r6.xyz = r5.xxx ? r6.xyz : r7.xyz;
    r0.y = r5.x ? r0.y : 0;
    r3.xyz = r0.yyy ? r3.xyz : r6.xyz;
    r9.xyz = r0.yyy ? r1.xyz : r5.yzw;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r9.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}