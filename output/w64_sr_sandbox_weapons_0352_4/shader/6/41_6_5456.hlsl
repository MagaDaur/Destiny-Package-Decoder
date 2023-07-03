// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
Texture3D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[4];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[172];
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).wxyz;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyz = t2.Load(r2.w).xyz;
    r0.y = cb10[3].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = cb0[22].x / r5.x;
    r0.w = saturate(r5.y);
    r6.xyzw = r0.wwww * float4(13.902051,0.202289,1.71468103,0.426966995) + float4(-1.66824603,0.797711015,0,0.573032975);
    r7.xyz = cmp(r0.www >= float3(0.119999997,0.180000007,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r6.xy = r7.xy * r6.xy;
    r6.xy = float2(2,2) * r6.xy;
    r6.x = r6.x + r6.y;
    r6.x = saturate(r7.z * 1 + r6.x);
    r6.x = 0.75 * r6.x;
    r6.y = saturate(r2.z);
    r7.xy = r6.yy * float2(0.539568007,6.81818295) + float2(0,-5.81818295);
    r8.xyz = cmp(r6.yyy >= float3(0,0.926666975,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r6.y = r7.x + r7.y;
    r6.y = r8.z * 2 + r6.y;
    r6.y = saturate(r8.w * 1 + r6.y);
    r6.y = r6.y * 0.100000009 + 0.200000003;
    r7.x = saturate(r4.x);
    r7.yz = r7.xx * float2(-6.60121918,-0.0881740004) + float2(1,0.0881740004);
    r8.xyz = cmp(r7.xxx >= float3(0,0.140000001,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r7.xw = r8.xy + r8.yz;
    r7.xw = float2(9.99999997e-007,9.99999997e-007) + r7.xw;
    r7.xw = float2(0.5,0.5) * r7.xw;
    r7.xw = frac(r7.xw);
    r7.xy = r7.xw * r7.yz;
    r7.xy = r7.xy + r7.xy;
    r7.x = saturate(r7.x + r7.y);
    r7.x = 100 * r7.x;
    r7.yzw = cmp(r0.www >= float3(0,0.444999993,1));
    r8.xyw = r7.yzw ? float3(1,1,1) : 0;
    r7.yzw = r8.xyw + r8.yww;
    r7.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) * r7.yzw;
    r7.yzw = frac(r7.yzw);
    r6.zw = r7.yz * r6.zw;
    r6.zw = float2(2,2) * r6.zw;
    r0.w = r6.z + r6.w;
    r0.w = r7.w * 2 + r0.w;
    r0.w = r8.w * 1 + r0.w;
    r0.w = min(1, r0.w);
    r3.x = saturate(r3.x);
    r6.zw = r3.xx * float2(-3.50532103,-0.096721001) + float2(1,0.096721001);
    r7.yzw = cmp(r3.xxx >= float3(0,0.264999986,1));
    r7.yzw = r7.yzw ? float3(1,1,1) : 0;
    r7.yz = r7.yz + r7.zw;
    r7.yz = float2(9.99999997e-007,9.99999997e-007) + r7.yz;
    r7.yz = float2(0.5,0.5) * r7.yz;
    r7.yz = frac(r7.yz);
    r6.zw = r7.yz * r6.zw;
    r6.zw = r6.zw + r6.zw;
    r3.x = saturate(r6.z + r6.w);
    r0.w = r0.w * 24 + 0.899999976;
    r0.w = r3.x * r0.w + 0.100000001;
    r4.x = r4.x + r0.z;
    r8.w = r4.x * r5.x;
    r7.yzw = cb9[r0.y+0].yyy * cb0[26].xyz;
    r7.yzw = cb0[25].xyz * cb9[r0.y+0].xxx + r7.yzw;
    r7.yzw = cb0[27].xyz * cb9[r0.y+0].zzz + r7.yzw;
    r7.yzw = cb0[28].xyz + r7.yzw;
    r9.xyz = cb9[r0.y+32].zyw * float3(1,-1,1);
    r9.xyz = cb9[r0.y+32].zxy * r9.xyz;
    r10.xyz = cb9[r0.y+32].ywz * float3(-1,1,1);
    r9.xyz = cb9[r0.y+32].yzx * r10.xyz + -r9.xyz;
    r10.xyz = cb9[r0.y+32].wzy * float3(1,1,-1);
    r9.xyz = cb9[r0.y+32].www * r10.xyz + r9.xyz;
    r9.xyz = cb9[r0.y+32].xxx * cb9[r0.y+32].xyz + r9.xyz;
    r10.xyz = cb0[26].xyz * r9.yyy;
    r9.xyw = cb0[25].xyz * r9.xxx + r10.xyz;
    r9.xyz = cb0[27].xyz * r9.zzz + r9.xyw;
    r0.y = cb0[22].x * r0.w;
    r0.y = 3.14159274 * r0.y;
    sincos(r0.y, r3.x, r10.x);
    r0.y = dot(r9.xyz, r9.xyz);
    r0.y = rsqrt(r0.y);
    r0.yzw = r9.xyz * r0.yyy;
    r0.yzw = r3.xxx * r0.yzw;
    r9.xyz = -r7.yzw + r3.yzw;
    r10.yzw = r9.zxy * -r0.zwy;
    r11.xyz = r9.yzx * -r0.wyz + -r10.yzw;
    r3.x = dot(r9.xyz, -r0.yzw);
    r11.w = -r3.x;
    r9.xyz = r10.xxx * r9.xyz;
    r9.w = 0;
    r9.xyzw = r11.xyzw + r9.xyzw;
    r10.yzw = r9.yzx * r0.wyz;
    r10.yzw = r0.zwy * r9.zxy + -r10.yzw;
    r9.xyz = r10.xxx * r9.xyz + r10.yzw;
    r0.yzw = r9.www * r0.yzw + r9.xyz;
    r0.yzw = r0.yzw + r7.yzw;
    r0.yzw = r0.yzw + -r3.yzw;
    r3.x = max(cb0[22].x, 9.99999997e-007);
    r3.x = 1 / r3.x;
    r0.yzw = r3.xxx * r0.yzw;
    r0.yzw = r0.yzw * cb0[22].xxx + r1.xyz;
    r7.yzw = r3.yzw * float3(0.166666672,0.166666672,0.166666672) + float3(0.5,0.5,0.5);
    r7.yzw = t3.SampleLevel(s1_s, r7.yzw, 0).xyz;
    r7.yzw = r7.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = r7.yzw * r7.xxx;
    r0.yzw = r7.xyz * cb0[22].xxx + r0.yzw;
    r6.xzw = cb0[170].xyz * r6.xxx;
    r0.yzw = r6.xzw * cb0[169].xxx + r0.yzw;
    r3.x = saturate(cb0[171].x + cb0[171].x);
    r3.x = 1 + -r3.x;
    r7.yzw = r3.xxx * r0.yzw;
    r0.yzw = cb0[146].xxx * r7.yzw;
    r6.xzw = r7.yzw * cb0[146].xxx + r3.yzw;
    r3.x = cb0[171].x * r4.y;
    r4.z = r3.x * 6.28318548 + r4.z;
    r3.x = dot(r1.xyz, r1.xyz);
    r3.x = sqrt(r3.x);
    r9.x = 9.99999975e-006 + r3.x;
    r9.xyz = r1.xyz / r9.xxx;
    r9.xyz = r9.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.yzw;
    r3.x = cmp(0.00100000005 < r3.x);
    r9.xyz = r3.xxx ? r9.xyz : r3.yzw;
    r3.x = dot(r7.yzw, r7.yzw);
    r3.x = sqrt(r3.x);
    r9.w = 9.99999975e-006 + r3.x;
    r10.xyz = r7.yzw / r9.www;
    r10.xyz = r10.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r6.xzw;
    r3.x = cmp(0.00100000005 < r3.x);
    r10.xyz = r3.xxx ? r10.xyz : r6.xzw;
    r11.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r11.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r11.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r9.xy = r9.xy / r9.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = r10.xy / r10.zz;
    r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = cb12[12].xy * r9.xy;
    r11.xy = (int2)r9.xy;
    r11.zw = float2(0,0);
    r3.x = t1.Load(r11.xyw).x;
    r3.x = r3.x * cb0[0].y + cb0[0].x;
    r3.x = 1 / r3.x;
    r9.xy = cb12[12].xy * r10.xy;
    r12.xy = (int2)r9.xy;
    r12.zw = float2(0,0);
    r9.x = t1.Load(r12.xyw).x;
    r9.x = r9.x * cb0[0].y + cb0[0].x;
    r9.x = 1 / r9.x;
    r10.xyw = t0.Load(r11.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r9.y = dot(r10.xyw, r10.xyw);
    r9.y = rsqrt(r9.y);
    r10.xyw = r10.xyw * r9.yyy;
    r11.xyz = t0.Load(r12.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r9.y = dot(r11.xyz, r11.xyz);
    r9.y = rsqrt(r9.y);
    r11.xyz = r11.xyz * r9.yyy;
    r9.y = -r9.x + r3.x;
    r9.w = dot(r10.xyw, r11.xyz);
    r9.w = 1 + -r9.w;
    r3.x = r3.x + -r9.z;
    r9.x = r9.x + -r10.z;
    r9.z = r9.x * r3.x;
    r9.z = cmp(r9.z < 0);
    r9.y = cmp(abs(r9.y) < 2.5);
    r9.y = r9.y ? r9.z : 0;
    r9.z = cmp(r9.w < 0.600000024);
    r9.y = r9.z ? r9.y : 0;
    r9.z = abs(r9.x) + abs(r3.x);
    r3.x = abs(r3.x) / r9.z;
    r7.x = cb0[22].x + r1.w;
    r1.w = dot(r11.xyz, r7.yzw);
    r9.z = r1.w + r1.w;
    r10.xyz = -r9.zzz * r11.xyz + r7.yzw;
    r10.yzw = r10.xyz * r6.yyy;
    r0.yzw = r3.xxx * r0.yzw + r3.yzw;
    r3.x = 1 + -r3.x;
    r12.xyz = r10.yzw * r3.xxx;
    r0.yzw = r12.xyz * cb0[22].xxx + r0.yzw;
    r0.yzw = r9.yyy ? r0.yzw : r6.xzw;
    r10.x = 0;
    r6.xyzw = r9.yyyy ? r10.yzwx : r7.yzwx;
    r3.x = cmp(abs(r9.x) < 0.100000001);
    r9.yzw = -r1.www * r11.xyz + r7.yzw;
    r7.x = dot(r9.yzw, r9.yzw);
    r7.x = rsqrt(r7.x);
    r9.yzw = r9.yzw * r7.xxx;
    r7.x = dot(r9.yzw, r7.yzw);
    r7.y = 0.75 * r7.x;
    r1.w = cmp(abs(r1.w) < 0.200000003);
    r1.w = r3.x ? r1.w : 0;
    r7.x = cmp(r7.x < 0.0666666701);
    r3.x = r3.x ? r7.x : 0;
    r7.x = r3.x ? 9.99999975e-005 : r7.y;
    r7.xyz = r9.yzw * r7.xxx;
    r7.xyz = r1.www ? r7.xyz : r6.xyz;
    r9.yzw = cb12[7].xyz + -r0.yzw;
    r7.w = dot(r9.yzw, r9.yzw);
    r7.w = rsqrt(r7.w);
    r9.yzw = r9.yzw * r7.www;
    r7.w = 0.00999999978 + -r9.x;
    r9.xyz = r9.yzw * r7.www + r3.yzw;
    r9.xyz = r7.xyz * cb0[22].xxx + r9.xyz;
    r0.yzw = r1.www ? r9.xyz : r0.yzw;
    r1.w = r1.w ? r3.x : 0;
    r8.xyz = r1.www ? r3.yzw : r0.yzw;
    r6.xyz = r1.www ? r1.xyz : r7.xyz;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}